class RemoveUsernameColumn < ActiveRecord::Migration
  def up
    remove_column :masters, :username 
  end

  def down
    add_column :masters, :username, :string
  end
end
