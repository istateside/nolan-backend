class Image < ApplicationRecord
  attr_accessor :attachment
  belongs_to :imageable, polymorphic: true, optional: true

  has_attached_file :attachment, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\z/
end
