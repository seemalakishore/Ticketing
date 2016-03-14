class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :addressable_id
      t.string :addressable_type
      t.string :street
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
