class PupilsController < ApplicationController
  def new
    @pupil = Pupil.new
  end

  def create
    pupils_pararms = params.require(:pupil).permit(:names, :nicknames, :emails)

    Pupil.create(pupils_pararms)

    redirect_to root_path, notice: 'You are registered'
  end
end
