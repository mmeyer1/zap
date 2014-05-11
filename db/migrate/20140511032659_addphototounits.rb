class Addphototounits < ActiveRecord::Migration
  def self.up
    add_attachment :units, :photo
  end

  def self.down
    remove_attachment :units, :photo
end
end
