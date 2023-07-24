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

  post '/plants' do
    plant = Plant.new(plant_params)
    if plant.save
      plant.to_json
    else
      { message: 'Unable to create the plant.' }.to_json
    end
  end

  patch '/plants/:id' do
    plant = Plant.find(params[:id])
    if plant.update(plant_params)
      plant.to_json
    else
      { message: 'Unable to update the plant.' }.to_json
    end
  end

  delete '/plants/:id' do
    plant = Plant.find(params[:id])
    plant.destroy
    { message: 'Plant deleted successfully.' }.to_json
  end

  get '/care_tasks' do
    care_tasks = CareTask.all
    care_tasks.to_json
  end

  get '/care_tasks/:id' do
    care_task = CareTask.find(params[:id])
    care_task.to_json
  end

end
