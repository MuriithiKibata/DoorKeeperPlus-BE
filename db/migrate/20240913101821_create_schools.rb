class CreateSchools < ActiveRecord::Migration[7.1]
  def change
    create_table :schools do |t|
      t.text :name
      t.integer :organisation_id

      t.timestamps
    end
  end
end
