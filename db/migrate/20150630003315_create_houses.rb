class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country

      t.timestamps null: false
    end
  end
end
