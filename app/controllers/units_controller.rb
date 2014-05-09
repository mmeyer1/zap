class UnitsController < ApplicationController
def new
    @unit = Unit.new
end

def create
    @unit = Unit.new(unit_params)
    
    if @unit.save
    redirect_to @unit
    else
    render 'new'
    end
end 

def show
    @unit = Unit.find(params[:id])
end 

def edit 
@unit = Unit.find(params[:id])
end

def update 
@unit = Unit.find(params[:id])

if @unit.update(unit_params)
    redirect_to @unit
else
    render 'edit'
end
end

def destroy
@unit = Unit.find(params[:id])
@unit.destroy

redirect_to welcome_index_path
end
    private
    # Strong parameters
    def unit_params
        params.require(:unit).permit(:name, :descr)
    end
end