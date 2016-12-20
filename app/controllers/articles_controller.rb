class ArticlesController < ApplicationController

def index
	@article = Article.find(session[:user_id])
end

def new
	@article = Article.new
end

def create
	@article = Article.new(article_params)
	if @article.save
		flash[:notice] = "New Article created"
		redirect_to(:action => 'index')
	else
		render('new')
	end
end

def edit
	@article = Article.find(params[:id])
end

def update
	@article = Article.new(article_params)
	if @article.update_attributes
		flash[:notice] = "Article updated"
		redirect_to(:action => 'index')
	else
		render('edit')
	end
end

def delete
	@article = Article.find(params[:id])
end

def destroy
	Article.find(params[:id]).destroy
	flash[:notice] = "Article Destroyed"
	redirect_to(:action => 'index')
end


private
	def article_params
		params.require(:article).permit(:article_name,:category,:content,:user_id)
	end

end
