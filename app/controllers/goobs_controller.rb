class GoobsController < ApplicationController
  before_action :set_goob, only: [:show, :edit, :update, :destroy]

  def index
    @goobs = Goob.all
  end

  def show
  end

  def new
    @goob = Goob.new
  end

  def edit
  end

  def create
    @goob = Goob.new(goob_params)

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

    def goob_params
      params.require(:goob).permit(:description)
    end
end
