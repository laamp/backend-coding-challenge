class Api::ArtController < ApplicationController
    def index
        @art = Art.all

        render json: @art
    end

    def show
        @art = Art.find(params[:id])
        # @art.comments

        render json: @art
    end
end
