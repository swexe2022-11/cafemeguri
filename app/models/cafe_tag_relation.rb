class CafeTagRelation < ApplicationRecord
  belongs_to :cafe
  belongs_to :tag
end
