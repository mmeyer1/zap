class CreateUnitColors < ActiveRecord::Migration
  def change
    create_table :unit_colors do |t|
      t.belongs_to :unit
      t.belongs_to :paint
      t.string :technique 
      
      t.timestamps
    end
  end
end
