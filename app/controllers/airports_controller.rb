class AirportsController < ApplicationController
    def index
        airport = Airport.all
        render json: airport, status: :ok
    end

    def show
        airport = Airport.find(params[:id])
        render json: airport, status: :ok
    end
      
end
