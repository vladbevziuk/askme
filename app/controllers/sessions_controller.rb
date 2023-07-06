class SessionsController < ApplicationController
  def new
  end

  def create
    pupils_params = params.require(:session)

    pupil = Pupil.find_by(email: pupils_params[:email])

    if pupil.present?
      session[:pupils_id] = pupil.id

      redirect_to root_path, notice: 'You entered to site'
    end
  end
end
