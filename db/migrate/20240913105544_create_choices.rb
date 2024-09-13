class CreateChoices < ActiveRecord::Migration[7.1]
  def change
    create_table :choices do |t|
      t.boolean :correct
      t.text :content
      t.integer :question_id

      t.timestamps
    end
  end
end
