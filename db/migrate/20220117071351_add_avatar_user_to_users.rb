class AddAvatarUserToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :avatar_user, :string
  end
end
