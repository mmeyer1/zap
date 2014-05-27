class PaintsController < ApplicationController
    def new 
        @paint = Paint.new
    end 

    def create 
        @paint = Paint.new(params[:id])

        if @paint.save
         redirect_to get_current_unit
     else 
        flash[:alert] = "Couldn't Save this Paint"
    end 
    end

    def show 
        @paint = get_current_unit.paint.find(params[:id])
    end 

end
