class CreateCafes < ActiveRecord::Migration[5.2]
  def change
    create_table :cafes do |t|
      t.string :name
      t.string :message
      t.string :map
      t.binary :image
      t.datetime :date
      t.integer :user_id

      t.timestamps
    end
  end
end
