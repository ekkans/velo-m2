class AddGalleryToSlides < ActiveRecord::Migration
  def change
    add_reference :slides, :gallery, index: true, foreign_key: true
  end
end
