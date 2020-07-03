class UsersController < ApplicationController
    def index
        render json: User.all.as_json#(include: [:purchases, :courses])
    end

    # def show
        
    # end
end
