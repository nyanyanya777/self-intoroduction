class Engineer < ApplicationRecord
    has_attached_file :image,
  styles: { medium: "240x161>", thumb: "240x161>" },
  path: "#{Rails.root}/public/system/:class/image/:id.:style.:extension",
  url: "/system/:class/image/:id.:style.:extension"

  validates_attachment_content_type :image, content_type: /image/

end
