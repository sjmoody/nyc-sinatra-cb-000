class FiguresController < ApplicationController

  get '/figures' do
    # View all figures
    @figures = Figure.all
    erb:'/figures/index'

  end

    get '/figures/new' do
    # get '/figures/new' view form to create a new landmark
      erb:'/figures/new'
    end

    post '/figures' do
    # route form subnmission to create a landmark
      puts "form submitted: Params are #{params}"
    end

    get '/figures/:id' do
    # see a single landmark
      @figure = Figure.find_by_id(params[:id])
      erb:'/figures/show'
    end

    get '/figures/:id/edit' do
    # view form to edit a single landmark
      @figure = Figure.find_by_id(params[:id])

      erb:'/figures/edit'
    end

    patch '/figures/:id' do
    # controller to update landmark based on form submit
      # binding.pry
      @figure = Figure.find_by_id(params[:id])
      @figure.name = params[:name]
      @figure.save
      redirect("/figures/#{@figure.id}")
    end

end
