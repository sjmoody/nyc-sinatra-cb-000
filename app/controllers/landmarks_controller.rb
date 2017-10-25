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

    @landmark = Landmark.create(params)
    redirect("/landmarks/#{@landmark.id}")
        redirect("/songs/#{@song.slug}")
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
      puts "form submitted: Params are #{params}"
      
  end



end
