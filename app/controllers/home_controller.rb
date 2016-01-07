class HomeController < ApplicationController
  def index
    @articles = Article.all.limit(6).order("created_at DESC")
    @work = Work.last
  end
end
