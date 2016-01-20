require 'rails_helper'

RSpec.describe Listing, type: :model do
	# Listing.create(listing: "haha") 
	describe "ActiveRecord associations" do
    it { is_expected.to belong_to(:user) }
	end
end