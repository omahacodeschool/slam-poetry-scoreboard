class CreateSlams < ActiveRecord::Migration
  def change
    create_table :slams do |t|
      t.integer :master_id
      t.string :name
      t.date :event_date
      t.string :description

      t.timestamps
    end
  end
end
