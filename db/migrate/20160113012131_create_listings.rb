class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :listing
      t.string :title
      t.string :description
      t.string :location

      t.timestamps null: false
    end
  end
end
