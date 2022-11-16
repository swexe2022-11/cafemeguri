class CreateCaves < ActiveRecord::Migration[5.2]
  def change
    create_table :caves do |t|
      t.string :name
      t.string :message

      t.timestamps
    end
  end
end
