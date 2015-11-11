class InspectionsController < ApplicationController

  before_action :is_authenticated

  require 'rest-client'

   def index
    @hive = Hive.find(params[:hive_id])
    @inspections = @hive.inspections
    gon.inspections = @inspections
   end

   def new
    @hive = Hive.find params[:hive_id]
    @inspection = Inspection.new
    @data = hive_weather
    @temp = temp_imperial(@data["main"]["temp"])
   end

   def create
    hive = Hive.find(params[:hive_id])
    @inspection = hive.inspections.create inspection_params
    flash[:notice] = "inspection logged"
    redirect_to hive_path(hive)
   end

   def destroy
    hive = Hive.find(params[:hive_id])
    @inspection = Inspection.find(params[:id])
    @inspection.destroy
    flash[:notice] = "inspection deleted"
    redirect_to hive_path(hive)
   end

  def edit
    @hive = Hive.find(params[:hive_id])
    @inspection = Inspection.find(params[:id])
  end

  def update
    @hive = Hive.find(params[:hive_id])
    @inspection = Inspection.find(params[:id])
    @inspection.update inspection_params
    if @inspection
      @inspection.save
      flash[:notice] = "inspection updated"
      redirect_to hive_path(@hive)
    end
  end

  def show
    @inspection = Inspection.find params[:id]
  end

  private

  def inspection_params
    params.require(:inspection).permit(:temperment, :laying_pattern, :uncapped_brood, :capped_brood, :population, :drone_population, :drone_cells, :honey, :nectar, :pollen, :syrup, :pollen_sub, :medicine, :add_super, :re_queen, :queen, :eggs, :queen_cells, :notes, :inspection_date, :wind_speed, :temp, :weather_main)
  end

  def hive_weather
    zipcode = Hive.find(params[:hive_id]).location
    response = RestClient.get(
      "api.openweathermap.org/data/2.5/weather?zip=" + zipcode.to_s + ",us&appid=" + ENV['KEY'])
    data = JSON.parse(response.body)
  end

  def temp_imperial kelvin
    number = (kelvin - 273.15)* 1.8000 + 32.00
    return number.round(2)
  end

end
