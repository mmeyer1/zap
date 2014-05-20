class Paint < ActiveRecord::Base
    has_many :unit_colors
    has_many :units, through: :unit_colors
end
