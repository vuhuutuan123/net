class CreateChapters < ActiveRecord::Migration[7.0]
  def change
    create_table :chapters do |t|
      t.integer :comic_id
      t.string :name
      
      t.timestamps
    end
  end
end
