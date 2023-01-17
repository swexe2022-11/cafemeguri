class AddAddressInfoToCafes < ActiveRecord::Migration[5.2]
  def change
    add_column :cafes, :address, :string
    add_column :cafes, :latitude, :float
    add_column :cafes, :longitude, :float
  end
end
