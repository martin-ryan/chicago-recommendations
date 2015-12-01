require "sinatra/base"

# ApplicationController should always be loaded FIRST
require "./controllers/application"

# then require the other things
require "./controllers/recommendations"
require "./models/recommendation"

map("/") { run RecommendationsController }
