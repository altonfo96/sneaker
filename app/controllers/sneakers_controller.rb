class SneakersController < ApplicationController
    def index
        render json: Sneaker.all
    end

    def create
        sneaker = Sneaker.create!(sneaker_param)
        render json: sneaker, status: 200
    end

    def destroy
        sneaker = Sneaker.find(params[:id])
        sneaker.destroy
        head :no_content
    end

    def patch
        sneaker = Sneaker.find_by(id:param[:id])
        favorite.update(sneaker_params)
    end 

    private 
    def sneaker_param 
        params.permit(:price, :image, :name)
    end
    
end
