class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new

  end

  def create
    byebug
    appearance = Appearance.create(appear_params)
    if appearance.save
    # byebug
    redirect_to episode_path(appearance.episode)
    else
      render 'new'
    end


  end


  private


  def appear_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
