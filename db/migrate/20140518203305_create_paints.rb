class CreatePaints < ActiveRecord::Migration
  def change
    create_table :paints do |t|

      t.timestamps
    end
  end
end
