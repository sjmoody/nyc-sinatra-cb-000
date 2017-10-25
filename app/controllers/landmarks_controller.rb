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

  post '/landmarks/new' do
  # route form subnmission to create a landmark
    puts "form submitted: Params are #{params}"
  end

  get '/landmarks/:id' do
  # see a single landmark
    # binding.pry
    @landmark = Landmark.find_by_id(params[:id])
    erb:'/landmarks/show'
  end

  get '/landmarks/:id/edit' do
  # view form to edit a single landmark
    erb:'/landmarks/edit'
  end

  post '/landmarks/:id/edit' do
  # controller to update landmark based on form submit
    puts "form submitted: Params are #{params}"
  end



end
