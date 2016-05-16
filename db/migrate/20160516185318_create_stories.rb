class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :source
      t.string :heading
      t.string :genre
      t.text :body

      t.timestamps null: false
    end
  end
end
