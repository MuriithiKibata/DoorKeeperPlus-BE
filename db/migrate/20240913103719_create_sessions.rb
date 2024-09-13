class CreateSessions < ActiveRecord::Migration[7.1]
  def change
    create_table :sessions do |t|
      t.integer :unit_id
      t.time :start_time
      t.time :endtime
      t.boolean :use_geolocation
      t.integer :late_time

      t.timestamps
    end
  end
end
