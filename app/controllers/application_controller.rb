class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/plants' do
    plants = Plant.all
    plants.to_json
  end

  get '/plants/:id' do
    plant = Plant.find(params[:id])
    plant.to_json
  end

  
end
