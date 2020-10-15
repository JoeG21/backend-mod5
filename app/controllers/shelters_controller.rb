class SheltersController < ApplicationController
    def index
        shelter = Shelter.all
        render json: shelter, only: [:name, :location, :img, :phone]
    end

    def show
        user = find_shelter
        render json: shelter, only: [:name, :location, :img, :phone]
    end


    private

    def find_shelter
        @shelter = Shelter.find(params[:id])
    end

end
