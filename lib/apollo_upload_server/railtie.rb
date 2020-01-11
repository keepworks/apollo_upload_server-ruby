require 'apollo_upload_server/middleware'
require 'rails'

module ApolloUploadServer
  class Railtie < Rails::Railtie
    initializer 'apollo_upload_server.apply_middleware' do |app|
      app.middleware.use Middleware
    end
  end
end
