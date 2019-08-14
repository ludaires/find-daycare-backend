class Api::V1::DaycaresController < ApplicationController
    before_action :get_daycare, only: [:show, :update, :destroy]

    def index 
        @daycare = Daycare.all
        render json: @daycare
    end

    private
    def get_daycare
        @daycare = Daycare.find(params[:id])
    end

    def daycare_params
        params.require(:daycare).permit(:name, :location, :rating, :reviews)
    end
end