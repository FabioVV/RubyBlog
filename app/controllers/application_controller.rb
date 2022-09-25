class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?

    def logged_in?
        !!current_user
    end
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def require_user
        if !logged_in?
            flash[:alert] = "Você precisa estar logado para realizar está ação!"
            redirect_to login_path
        end
    end

end
