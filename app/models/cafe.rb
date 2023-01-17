class Cafe < ApplicationRecord
    #cafesテーブルから中間テーブルに対する関連付け
    has_many :cafe_tag_relations, dependent: :destroy
    #cafesテーブルから中間テーブルを介してTagsテーブルへの関連付け
    has_many :tags, through: :cafe_tag_relations, dependent: :destroy
    
    geocoded_by :address
    after_validation :geocode
end
