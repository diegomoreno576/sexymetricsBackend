class Api::V1::StaticController < ApplicationController
    def home
        render json: { status: "its working" }
    end
end