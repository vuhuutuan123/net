class CreateComicFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :comic_follows do |t|

      t.timestamps
    end
  end
end
