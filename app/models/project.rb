class Project < ApplicationRecord
  has_one :cover_image, as: :imageable, class_name: 'Image'
  has_many :slides
end
