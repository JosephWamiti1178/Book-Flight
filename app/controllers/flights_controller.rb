class FlightsController < ApplicationController
    def index
        flight = Flight.all
        render json: flight, status: :ok
    end

    def show
        flight = Flight.find(params[:id])
        render json: flight, status: :ok
    end
      
end
