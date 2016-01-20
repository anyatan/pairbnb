class AddColumnToFacebookUsers < ActiveRecord::Migration
  def change
    add_column :facebook_users, :encrypted_password, :string
    add_column :facebook_users, :confirmation_token, :string
    add_column :facebook_users, :remember_token, :string
  end
end
