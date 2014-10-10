class AddColumToSlamsTableSlamEnd < ActiveRecord::Migration
  def change
    add_column :slams, :slam_complete, :boolean, default: false
  end
end
