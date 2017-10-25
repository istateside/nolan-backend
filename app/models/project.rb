class Project < ApplicationRecord
  has_one :cover_image, as: :imageable, class_name: 'Image'
  has_many :slides, -> { order(position: :asc) }
  acts_as_list scope: [:category]

  accepts_nested_attributes_for :cover_image, :slides, allow_destroy: true, reject_if: :all_blank

  validates_presence_of :cover_image
end
