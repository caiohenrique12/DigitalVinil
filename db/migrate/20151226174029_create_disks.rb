class CreateDisks < ActiveRecord::Migration
  def change
    create_table :disks do |t|
      t.string :name
      t.string :author
      t.decimal :price
      t.date :recording_year
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
