class CreateNewdays < ActiveRecord::Migration[6.1]
  def change
    create_table :newdays do |t|
      t.string :title
      t.date :date
      t.string :mood
      t.text :doing
      t.text :picture

      t.timestamps
    end
  end
end
