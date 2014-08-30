class GoobsController < ApplicationController
  before_action :set_goob, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @goobs = Goob.all.reverse
  end

  def show
  end

  def new
    @goob = current_user.goobs.build
  end

  def edit
  end

  def create
    @goob = current_user.goobs.build(goob_params)

      if @goob.save
        redirect_to @goob, notice: 'Goob was successfully created.'
      else
        render action: 'new'
      end
  end

  def update
      if @goob.update(goob_params)
        redirect_to @goob, notice: 'Goob was successfully updated.'
      else
        render action: 'edit'
      end
  end

  def destroy
    @goob.destroy
    redirect_to goobs_url
  end

  private

    def set_goob
      @goob = Goob.find(params[:id])
    end

    def correct_user
      @goob = current_user.goobs.find_by(params[:id])
      redirect_to goobs_path, notice: "Get Chya Weight Up Son!!!" if @goob.nil?
    end

    def goob_params
      params.require(:goob).permit(:description, :image)
    end
end
