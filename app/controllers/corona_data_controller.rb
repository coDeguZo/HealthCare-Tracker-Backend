class CoronaDataController < ApplicationController
    def index
        render json: CoronaDatum.all
    end

    def show
        corona_datum = CoronaDatum.find(params[:id])
        render json: corona_datum
    end
end
