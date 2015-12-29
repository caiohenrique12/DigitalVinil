class CreateDisks < ActiveRecord::Migration
  def change
    create_table :disks do |t|
      t.string :name
      t.string :author
      t.string :address
      t.string :longitude
      t.string :latitude
      t.decimal :price
      t.integer :recording_year
      t.string :available
      t.integer :state_id

      t.timestamps null: false
    end
  end
end
