class UsersController < ApplicationController
    before_action :set_user, only:[:show, :edit, :update, :destroy]
    before_action :require_user, only: [:edit, :update]
    before_action :require_same_user, only:[:edit, :update, :destroy]


    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:notice] = "Bem vindo ao lenin #{@user.username}! \n Você criou sua conta com sucesso!!"
            redirect_to articles_path
        else
            render 'new', status: :unprocessable_entity
        end
    end

    #def destroy
        #@user.destroy
        #session[:user_id] = nil if @user == current_user
        #flash[:notice] = "Conta e todos os posts associados apagados."
    #end

    def destroy
        if current_user != @user
          @user.destroy
          session[:user_id] = nil
          flash[:danger] = "Conta e todos os posts associados apagados."
        else
          flash[:danger] = "Você não pode se apagar!!!"
        end
        redirect_to users_path
      end

    def edit
        #@user = User.find(params[:id])
    end

    def update
        #@user = User.find(params[:id])
        if @user.update(user_params)
            flash[:notice] = "Suas informações de perfil foram modificados com sucesso, caro(a) #{@user.username}!! "
            redirect_to @userz
        else

        end
    end

    def show
        #@user = User.find(params[:id])
        #@articles = @user.articles
        @articles = @user.articles.page params[:page]
    end

    def index
        @users = User.page params[:page]
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    def set_user
        @user = User.find(params[:id])
    end

    def require_same_user
        if current_user != @user && !@current_user.admin?
            flash[:alert] = 'Só é possivel realizar está acão na sua própria conta.'
            redirect_to @user
        end 
    end
end