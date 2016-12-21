class WelcomeController < ApplicationController
  def index
	@listed = Article.where(:visible => '1')
  end
  
  def read 
	@content = Article.find(params[:id])
  end
end
