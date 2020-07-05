class ArticlesController < ApplicationController
	def new
	end

	def index
		@articles =Article.all
	end

	def create
		# render plain: params[:article].inspect
		# raise params.inspect
		@article = Article.new(article_params)
		@article.save
		redirect_to article_path(@article)
	end
	def show
		@article = Article.find params[:id]
	end

	def article_params
		params.require(:article).permit(:title, :text)
	end
end
