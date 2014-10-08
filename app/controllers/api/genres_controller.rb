module Api
  class GenresController < ApplicationController
    before_action :set_genre,only: [:show] 

    def index
      render json: Genre.all, status: 200
    end
    
    def show
      render json: @genre, status: 200
    end

    private 
    def set_genre
      @genre = Genre.find(params[:id])
    end
  end
end
