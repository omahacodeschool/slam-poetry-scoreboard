class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :slam_id
      t.integer :round_number

      t.timestamps
    end
  end
end
