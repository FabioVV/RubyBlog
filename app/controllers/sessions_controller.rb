class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:session][:email])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id

            flash[:notice] = "Logado com sucesso!"
            redirect_to user
        else
            flash.now[:alert] = "Senha ou email errados!"
            render 'new', status: :unprocessable_entity
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = "Sessão encerrada"
        redirect_to root_path
    end

end