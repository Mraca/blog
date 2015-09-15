class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :show_categories

  def show_categories
  	@categories = Category.all
  	@header = "Witaj na blogu"
  end

end
