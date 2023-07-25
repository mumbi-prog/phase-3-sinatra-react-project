class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  post '/login' do
    request_body = JSON.parse(request.body.read)
    username = request_body["username"]
    password = request_body["password"]

    if username == "mumbi" && password == "1324"
      { success: true, message: 'Login successful!' }.to_json
    else
      { success: false, message: 'Login failed!!' }.to_json
    end
  end

  get '/plants' do
    plants = Plant.all.order(id: :desc).includes(:care_tasks)
    plants.to_json(include: :care_tasks)
  end  

  get '/plants/:id' do
    plant = Plant.includes(:care_tasks).find(params[:id])
    plant.to_json(include: :care_tasks)
  end

  post '/plants' do
    # binding.pry
    plant = Plant.create(name: params[:name], species: params[:species], image_url: params[:image_url])
    plant.to_json
  end

  patch '/plants/:id' do
    plant = Plant.find(params[:id])
    plant.update(name: params[:name], species: params[:species], image_url: params[:image_url])
    {message: "Updated successfully"}.to_json
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

  post '/care_tasks' do
    care_task = CareTask.create(name: params[:name], description: params[:description], due_date: params[:due_date])
    care_task.to_json
  end

  patch '/care_tasks/:id' do
    care_task = CareTask.find(params[:id])
    care_task.update(name: params[:name], description: params[:description], due_date: params[:due_date])
    {message: "Updated successfully"}.to_json
  end

  delete '/care_tasks/:id' do
    care_task = CareTask.find(params[:id])
    care_task.destroy
    { message: 'Care task has been deleted successfully.' }.to_json
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :species, :image_url)
  end

  def care_task_params
    params.require(:care_task).permit(:name, :description, :due_date, :plant_id)
  end

end
