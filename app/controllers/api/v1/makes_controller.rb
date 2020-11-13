class Api::V1::MakesController < ApplicationController
    def index
        makes = Make.all
        render json: makes
    end

    def show
        make = Make.find(params[:id])
        render json: make
    end


end
