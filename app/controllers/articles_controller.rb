class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    before_action :require_user , except: [:show, :index]
    before_action :require_same_user, only:[:edit, :update, :destroy]

    def show
    end

    def index
        @articles = Article.page params[:page]
    end

    def new
        @article = Article.new
    end

    def edit
    end


    def create
        @article = Article.new(article_params)
        @article.user = current_user
        if @article.save
            flash[:notice] = "Article was created successfully."
            redirect_to @article
        else
            render 'new', status: :unprocessable_entity
        end
    end

    
    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "Article was updated."
            redirect_to @article
        else
            render 'edit', status: :unprocessable_entity
        end
    end

    def destroy
        
        @article.destroy
        redirect_to articles_path, status: :see_other
    end

    private

    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description, category_ids: [])
    end

    def require_same_user
        if current_user != @article.user && !current_user.admin?
            flash[:alert] = "Só é possivel editar seus próprios posts!"
            redirect_to @article
        end
    end
end