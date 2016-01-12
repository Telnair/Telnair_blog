class HomeController < ApplicationController
  def index
    @articles = Article.all.limit(6).order("created_at DESC")
    @works = Work.all.limit(2).order("created_at DESC")
  end
end
