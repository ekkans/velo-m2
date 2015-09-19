class Slide < ActiveRecord::Base
  belongs_to :gallery

  default_scope { order(:position) }

  has_attached_file :image,
    styles: { large: "1200x800#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
