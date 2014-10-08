class ChangePoetIDtoPerfId < ActiveRecord::Migration
  def up
    remove_column :performances, :poet_id
    add_column :poets, :performance_id, :integer
  end

  def down
    add_column :performances, :poet_id, :integer
    remove_column :poets, :performance_id
  end
end
