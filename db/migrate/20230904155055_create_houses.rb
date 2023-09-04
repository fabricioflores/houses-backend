class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.st_point :address_lonlat, geographic: true
      t.timestamps
    end
  end
end
