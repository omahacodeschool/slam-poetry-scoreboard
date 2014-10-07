class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.integer :round_id
      t.integer :poet_id
      t.float :score1
      t.float :score2
      t.float :score3
      t.float :score4
      t.float :score5

      t.timestamps
    end
  end
end
