class PupilsController < ApplicationController
  def new
    session[:current_time] = Time.now
    @pupil = Pupil.new
  end

  def create
    pupil_params = params.require(:pupil).permit(:names, :nicknames, :emails)

    Pupil.create(pupil_params)

    redirect_to root_path, notice: 'You are registered'
  end
end
