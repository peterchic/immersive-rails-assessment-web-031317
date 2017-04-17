class GuestsController < ApplicationController

  def new
    @guest = Guest.new
    redirect_to 'guest_path'
  end

  def index
    @guests = Guest.all
  end

  def create
    @guest = Guest.create(params[:id])
    # binding.pry
    redirect_to 'guest_path'
  end

  def show
    @guest = Guest.find_by(params[:id])
    redirect_to 'guest_path'
  end




  private

  def guests_params
    params.require(:guest).permit(:name, :occupation, :rating)
  end

end
