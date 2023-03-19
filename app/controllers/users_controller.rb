class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json: user, include: :items
    end

    private
    def accepted_params
        params.permit(:id, :username, :city)
    end

end
