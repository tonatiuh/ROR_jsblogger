class ArticlesController < ApplicationController
	
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
		@comment = @article.comments.new
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(params[:article])
		@article.save
		redirect_to article_path(@article)
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		@article.update_attributes(params[:article])
		flash[:message] = "Article '#{@article.title}' Updated!"
		redirect_to article_path(@article)
	end

	def destroy
		article = Article.find(params[:id])
		article.destroy
		redirect_to articles_path()
	end

end
