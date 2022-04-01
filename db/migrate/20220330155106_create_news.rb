class CreateNews < ActiveRecord::Migration[6.1]
  def change
    create_table :news do |t|
      t.string :title
      t.date :date
      t.text :mood
      t.text :doing
      t.text :picture

      t.timestamps
    end
  end
end
