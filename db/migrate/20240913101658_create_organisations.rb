class CreateOrganisations < ActiveRecord::Migration[7.1]
  def change
    create_table :organisations do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :email
      t.string :number
      t.text :location

      t.timestamps
    end
  end
end
