class AddFacebookUserIdToListings < ActiveRecord::Migration
  def change
    add_column :listings, :facebookuser_id, :integer
  end
end
