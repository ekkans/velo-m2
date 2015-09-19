module API
  class Galleries < Grape::API
    include API::Defaults

    resource :galleries do

      desc 'Returns all the galleries'
      params do
        optional :access_token, type: String # useful for swagger
        optional :name, type: String
      end
      get do
        galleries = if params[:name]
          Gallery.find_by_name params[:name]
        else
          Gallery.all
        end
        present galleries, with: API::Resources::Gallery
      end

    end
  end
end
