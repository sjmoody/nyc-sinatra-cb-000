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
      # binding.pry
      @figure = Figure.create(params[:figure])
      if !params["landmark"]["name"].empty?
        @figure.landmarks << Landmark.create(name: params["landmark"]["name"])
      end
      if !params["title"]["name"].empty?
        @figure.titles << Title.create(name: params["title"]["name"])
      end
      @figure.save

      redirect("/figures/#{@figure.id}")
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
      @figure.update(params[:figure])
      if !params["landmark"]["name"].empty?
        @figure.landmarks << Landmark.create(name: params["landmark"]["name"])
      end
      if !params["title"]["name"].empty?
        @figure.titles << Title.create(name: params["title"]["name"])
      end
      @figure.save
      redirect("/figures/#{@figure.id}")
    end

end
