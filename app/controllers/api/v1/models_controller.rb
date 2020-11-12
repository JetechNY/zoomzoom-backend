class Api::V1::ModelsController < ApplicationController
    def index
        models = Model.all
        render json: models
    end

    def show
        model = Model.find(params[:id])
        render json: model
    end

    
end
