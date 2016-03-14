class CreateMoviesTheaters < ActiveRecord::Migration
  def change
    create_table :movies_theaters do |t|
      t.integer :movie_id
      t.integer :theater_id

      t.timestamps null: false
    end
  end
end
