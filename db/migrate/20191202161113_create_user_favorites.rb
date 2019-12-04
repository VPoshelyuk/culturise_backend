class CreateUserFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :user_favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :venue_name 
      t.string :venue_address
      t.string :venue_phone
      t.string :venue_access
      t.string :venue_opening
      t.string :venue_closing
      t.string :venue_schedule_details
      t.string :media 
      t.string :description
      t.string :price
      t.string :date_start
      t.string :date_end
      t.string :days_before_end
      t.string :permanent_event
      t.string :image
      t.string :latitude
      t.string :longitude


      t.timestamps
    end
  end
end
