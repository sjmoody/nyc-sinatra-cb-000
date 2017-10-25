require 'pry'
class LandmarksController < ApplicationController

get '/landmarks' do
  # View all landmarks
  @landmarks = Landmark.all
  erb:'/landmarks/index'

end

  get '/landmarks/new' do
  # get '/landmarks/new' view form to create a new landmark
    erb:'/landmarks/new'
  end

  post '/landmarks' do
  # route form subnmission to create a landmark
    # binding.pry
    @landmark = Landmark.create(params[:landmark])
    redirect("/landmarks/#{@landmark.id}")

  end

  get '/landmarks/:id' do
  # see a single landmark
    # binding.pry
    @landmark = Landmark.find_by_id(params[:id])
    erb:'/landmarks/show'
  end

  get '/landmarks/:id/edit' do
  # view form to edit a single landmark
  @landmark = Landmark.find_by_id(params[:id])

    erb:'/landmarks/edit'
  end

  patch '/landmarks/:id' do
    # controller to update landmark based on form submit
    @landmark = Landmark.find_by_id(params[:id])

    @landmark.name = params[:name]
    @landmark.year_completed = params[:year_completed]
    @landmark.save
      redirect("/landmarks/#{@landmark.id}")

  end


end
