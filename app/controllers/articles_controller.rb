class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_article, only: [:show, :edit, :update, :destroy]
  def index
    if params[:c].blank?
      @articles = Article.all.order("created_at DESC")
    else
      @c_id = Category.find_by(name: params[:c]).id
      @articles = Article.where(category_id: @c_id).order("created_at DESC")
    end
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:name, :image, :content, :category_id)
  end
end
