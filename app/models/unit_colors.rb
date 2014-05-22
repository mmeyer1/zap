class UnitColors < ActiveRecord::Base
    belongs_to :units 
    belongs_to :paints
end
