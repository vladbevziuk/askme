class PupilsController < ApplicationController
  def new
    session[:current_time] = Time.now
    @pupil = Pupil.new
  end

  def create
    pupil_params = params.require(:pupil).permit(:names, :nicknames, :emails)

    @pupil = Pupil.new(pupil_params)
    if @pupil.save
      redirect_to root_path, notice: 'You are registered'
    else
      flash.now[:alert] = "You have registered incorrectly"

      render :new
    end
  end
end
