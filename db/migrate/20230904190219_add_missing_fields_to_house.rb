class AddMissingFieldsToHouse < ActiveRecord::Migration[7.0]
  def change
    create_enum "type", ["casa", "departamento", "oficina", "local", "lote", "bodega", "finca", "otro"]
    add_column :houses, :description, :string
    add_column :houses, :price, :integer
    add_column :houses, :bedrooms, :integer
    add_column :houses, :bathrooms, :integer
    add_column :houses, :floorspace, :integer
    add_column :houses, :property_type, :enum, enum_type: "type"
    add_column :houses, :features, :string, array: true, default: []
  end
end
