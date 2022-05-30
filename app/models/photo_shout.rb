class PhotoShout < ApplicationRecord
  has_one_attached :image
  has_attached_file :image, styles: { thumb: '200x200' }
  validates_attachment :image,
  content_type: { content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif'] },
  presence: true
end
