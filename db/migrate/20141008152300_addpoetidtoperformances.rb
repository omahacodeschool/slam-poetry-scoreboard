class Addpoetidtoperformances < ActiveRecord::Migration
  def change
    add_column :performances, :poet_id, :integer
  end
end
