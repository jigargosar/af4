class Reschedule < ActiveRecord::Migration
  def self.up
    add_column :items, :reschedule, :boolean
  end

  def self.down
  end
end
