class CreatePoets < ActiveRecord::Migration
  def change
    create_table :poets do |t|
      t.string :name
      t.string :photo

      t.timestamps
    end
  end
end
