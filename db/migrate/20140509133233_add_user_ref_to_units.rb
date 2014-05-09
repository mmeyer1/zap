class AddUserRefToUnits < ActiveRecord::Migration
  def change
    add_reference :units, :user, index: true
  end
end
