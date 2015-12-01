class RecommendationsController < ApplicationController

  get "/" do

    erb :render

  end

  get "/api" do

    Recommendation.all.to_json

  end
  
end
