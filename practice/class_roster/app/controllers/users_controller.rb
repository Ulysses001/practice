class UsersController < ApplicationController
    def
        index
        @users = User.all
        def show
        @name = user.find(params[:id]).name 
        end
    end
end
