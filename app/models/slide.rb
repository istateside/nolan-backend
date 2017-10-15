class Slide < ApplicationRecord
  has_one :image, as: :imageable
  belongs_to :project, optional: true
end
