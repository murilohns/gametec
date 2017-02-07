class Notice < ApplicationRecord
  belongs_to :admin, optional: true

  has_attached_file :image,
  					styles:{thumb:["700x450#",:jpg]}
  validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
