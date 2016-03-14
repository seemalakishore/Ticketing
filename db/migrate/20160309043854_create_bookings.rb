class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :theater_id
      t.integer :movie_id
      t.date :show_date
      t.string :show_type
      t.integer :seats
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
