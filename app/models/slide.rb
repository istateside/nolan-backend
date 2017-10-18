class Slide < ApplicationRecord
  has_one :image, as: :imageable
  belongs_to :project, optional: true

  acts_as_list scope: :project

  accepts_nested_attributes_for :image, allow_destroy: true, reject_if: :all_blank
end
