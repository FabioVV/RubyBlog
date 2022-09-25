class PagesController < ApplicationController
  def home
    redirect_to articles_path if logged_in?
  end
 #netmetalizer
  def about
  end
end
