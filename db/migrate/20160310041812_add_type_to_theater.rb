class AddTypeToTheater < ActiveRecord::Migration
  def change
    add_column :theaters, :theater_type, :string
  end
end
