class AddDetailsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :cafes, :lat, :float
    add_column :cafes, :lng, :float
  end
end
