class CreateCafeTagRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :cafe_tag_relations do |t|
      t.references :cafe, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
