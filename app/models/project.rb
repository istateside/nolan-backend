class Project < ApplicationRecord
  has_one :cover_image, as: :imageable, class_name: 'Image'
  has_many :slides

  accepts_nested_attributes_for :cover_image, :slides, allow_destroy: true, reject_if: :all_blank
end
