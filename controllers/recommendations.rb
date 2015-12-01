class RecommendationsController < ApplicationController

  get "/" do
    @recommendations = Recommendation.all
    erb :read_recommendation

  end

  get "/create" do

    erb :create_recommendation

  end

  post "/create" do

    p params

    @rec = Recommendation.new
    @rec.contributor = params[:contributor]
    @rec.type_of_place = params[:type_of_place]
    @rec.place = params[:place]
    @rec.notes = params[:notes]
    @rec.save

    erb :render

  end

  get "/api" do

    Recommendation.all.to_json

  end

  get "/api/:whatever" do
    puts params
    return Recommendation.find(params[:whatever]).to_json
  end


end
