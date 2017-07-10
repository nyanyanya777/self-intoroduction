class Editer < ApplicationRecord
has_attached_file :image,
  styles: { medium: "655x435", thumb: "200x121"},
  path: "#{Rails.root}/public/system/:class/image/:id.:style.:extension",
  url: "/system/:class/image/:id.:style.:extension"

validates_attachment_content_type :image, content_type: /image/

end
