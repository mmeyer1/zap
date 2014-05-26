class PaintController < ApplicationController
    def new 
        @paint = Paint.new
    end 

    def create 
        @paint = Paint.new
        if @paint.save
         redirect_to @unit
     else 
        flash[:alert] = "Couldn't Save this Paint"
    end 
    end

    def show 
        @paint = paint.find(params[:id])
    end 

end
