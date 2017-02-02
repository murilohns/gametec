class Notice < ApplicationRecord
  belongs_to :admin
  has_attached_file :image
  
  validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
