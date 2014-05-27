module PaintHelper
    def get_current_unit
        Unit.find(params[:id])
    end
end
