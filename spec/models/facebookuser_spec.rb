require 'rails_helper'

RSpec.describe FacebookUser, type: :model do
	# Listing.create(listing: "haha") 
	describe "ActiveRecord associations" do
    it { is_expected.to have_many(:listings) }
	end
end