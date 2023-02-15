class FavoritesController < ApplicationController
    def patch
        favorite = Favorite.find_by(id:param[:id])
        favorite.update(favorite_params)
    end

    private

    def favorite_params
        params.permit(:likes)
    end
end
