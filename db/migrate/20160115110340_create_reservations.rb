class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :listing_id
      t.integer :user_id
      t.integer :facebook_user_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :pax
      t.string :special_requirements
    end
  end
end
