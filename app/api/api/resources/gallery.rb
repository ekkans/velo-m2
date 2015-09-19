module API
  module Resources
    class Gallery < Grape::Entity
      expose :id
      expose :name
      expose :slides, using: API::Resources::Slide
    end
  end
end
