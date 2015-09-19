module API
  module Resources
    class Slide < Grape::Entity
      expose :id
      expose :image_url do |slide, options|
        if slide.image.exists?
          slide.image.path(:large)
        else
          "http://placehold.it/1200x800"
        end
      end
    end
  end
end
