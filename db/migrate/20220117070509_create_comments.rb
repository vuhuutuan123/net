class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :chapter_id
      t.string :content
      t.integer :parent_id

      t.timestamps
    end
  end
end
