class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :listings, :facebookuser_id, :facebook_user_id
  end
end
