class TravelsController < ApplicationController
  def index
    @travels = Travel.all
  end

  def new
    @travel = Travel.new
  end

  def create
    @travel = Travel.new(strong_params)
    if @travel.save
      redirect_to travel_path(@travel)
    else
      render :new
    end
  end

  def show
    @travel = Travel.find(params[:id])
  end

def destroy
@travel = Travel.find(params[:id])
@travel.destroy
end

  def edit
    @travel = Travel.find(params[:id])
  end

  def update
    @travel = Travel.find(params[:id])
      if @travel.update(strong_params)
        redirect_to  travel_path(@travel)
      else
        render :edit
    end
  end

private

  def strong_params
    params.require(:travel).permit(:destination, :description, :price)
  end

end
