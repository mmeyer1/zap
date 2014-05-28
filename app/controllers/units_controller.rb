class UnitsController < ApplicationController
    before_action :authenticate_user!
def new
    @unit = Unit.new
end

def create
    @unit = current_user.units.new(unit_params)
    
    if @unit.save
    redirect_to new_unit_paint_path(@unit)
else
    flash[:alert] = "Error saving Unit"
    render 'new'
    end
end 

def show
    @unit = current_user.units.find(params[:id])
end 

def edit 
@unit = current_user.units.find(params[:id])
end

def update 
@unit = current_user.units.find(params[:id])

if @unit.update(unit_params)
    redirect_to @unit
else
    flash[:alert] = "Couldn't Update Unit"
    render 'edit'
end
end

def index
@units = current_user.units.all
end

def destroy
@unit = current_user.units.find(params[:id])
@unit.destroy
respond_to do |format|
    format.html {redirect_to units_path}
    format.js
end
end
    private
    # Strong parameters
    def unit_params
        params.require(:unit).permit(:name, :descr, :photo)
    end
end