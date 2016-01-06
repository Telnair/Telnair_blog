class WorksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_work, only: [:show, :edit, :update, :destroy]
  def index
    @works = Work.all.order("created_at DESC")
  end

  def show
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to @work
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @work.update(work_params)
      redirect_to @work
    else
      render 'edit'
    end
  end

  def destroy
    @work.destroy
    redirect_to works_path
  end

  private

  def find_work
    @work = Work.find(params[:id])
  end

  def work_params
    params.require(:work).permit(:name, :description, :image, :thumbnail)
  end
end
