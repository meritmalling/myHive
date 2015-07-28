class InspectionsController < ApplicationController

before_action :is_authenticated

   def index
    @inspection= Inspection.all
   end

   def new
    @inspection = Inspection.new
   end

   def create
    @current_user.hives.inspections.create inspection_params
    redirect_to hives_path
   end

   def destroy
    @inpection = Inspection.find(params[:id])
    @inspection.destroy
    redirect_to hives_path
   end

  def edit
    @inspection = Inspection.find(params[:id])
  end

  def update
    @inspection = Inspection.find(params[:id])
    @inspection.update inspection_params
    if @inspection
      @inspection.save
      flash[:sucess] = "inspection updated"
      redirect_to hives_path
    else
      flash[:danger] = "sorry please check your update fields"
      redirect_to hives_path
    end
  end

  def show
    @inspection = Inspection.find params[:id]
  end

  private

  def hive_params
    params.require(:inspection).permit(:temperment, :laying_pattern, :uncapped_brood, :capped_brood, :population, :drone_population, :drone_cells, :honey, :nectar, :pollen, :syrup, :pollen_sub, :medicine, :add_super, :remove_super, :re_queen, :queen, :eggs, :queen_cells, :notes)
  end

end
