class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Bem vindo ao lenin #{@user.username}! \n Você criou sua conta com sucesso!!"
            redirect_to articles_path
        else
            render 'new', status: :unprocessable_entity
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end