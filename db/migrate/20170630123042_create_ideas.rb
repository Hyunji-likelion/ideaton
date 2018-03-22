class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :editor
      t.text :content
      t.integer :count,  :default => 0

      t.timestamps null: false
    end
  end
end
