class CreateTests < ActiveRecord::Migration[7.1]
  def change
    create_table :tests do |t|
      t.integer :unit_id
      t.string :score
      t.string :float
      t.time :start_time
      t.time :end_time
      t.timestamps
    end
  end
end
