class AddLineMarkerColumn < ActiveRecord::Migration
  def self.up
    add_column :items, :line_marker, :boolean
  end

  def self.down
  end
end
