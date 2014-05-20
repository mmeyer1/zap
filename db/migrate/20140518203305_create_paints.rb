class CreatePaints < ActiveRecord::Migration
  def change
    create_table :paints do |t|
      t.string :color
      t.string :company
      
      t.timestamps
    end
  end
end
