class ApplicationController < Sinatra::Base

  require "bundler"
  Bundler.require

  ActiveRecord::Base.establish_connection(
    :database => "chicago_recommendations",
    :adapter => "postgresql"
  )

  # I need to specify my views folder because we're not using default Sinatra anymore that automatically looks in /views
  set :views, File.expand_path("../../views", __FILE__)

  not_found do
    erb :error_page
  end

end
