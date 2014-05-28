class PaintsController < ApplicationController
    before_filter :get_unit

    def get_unit
        @unit = Unit.find(params[:unit_id])
    end 

    def new 
        @paint = Paint.new
    end 

    def create 
        @paint = Paint.new(params[:id])

        if @paint.save
            @unit.paints << @paint
         redirect_to [@unit, @paint]
         flash[:alert] = "Paint Saved!"
     else 
        flash[:alert] = "Couldn't Save this Paint"
    end 
    end

    def show 
        @paint = @unit.paints.find(params[:id])
    end 

    def index
        @paint = @unit.paints
    end

end
