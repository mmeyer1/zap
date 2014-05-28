class UnitColor < ActiveRecord::Base
    belongs_to :unit
    belongs_to :paint
end
