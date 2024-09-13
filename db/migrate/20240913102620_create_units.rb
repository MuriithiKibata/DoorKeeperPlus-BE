class CreateUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :units do |t|
      t.text :name
      t.integer :lecturer_id
      t.string :unit_code
      t.integer :course_id

      t.timestamps
    end
  end
end
