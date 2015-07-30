class HivesController < ApplicationController

   before_action :is_authenticated

   def index
    @hives = Hive.all
   end

   def new
    @hive = Hive.new
   end

   def create
    @current_user.hives.create hive_params
    redirect_to hives_path
   end

   def destroy
    @hive = Hive.find(params[:id])
    @hive.destroy
    redirect_to hives_path
   end

  def edit
    @hive = Hive.find(params[:id])
  end

  def update
    @hive = Hive.find(params[:id])
    @hive.update hive_params
    if @hive
      @hive.save
      flash[:sucess] = "hive updated"
      redirect_to hives_path
    else
      flash[:danger] = "sorry please check your update fields"
      redirect_to hives_path
    end
  end

  def show
    @hive = Hive.find(params[:id])
    @inspections = @hive.inspections
    gon.inspections = @hive.inspections
  end

  private

  def hive_params
    params.require(:hive).permit(:nickname, :creation_date, :creation_method, :breed, :hivetype, :supers, :notes)
  end

end
