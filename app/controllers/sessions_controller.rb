class SessionsController < ApplicationController
  def new
  end

  def create
    pupil_params = params.require(:session)

    pupil = Pupil.find_by(emails: pupil_params[:emails])

    if pupil.present?
      session[:user_id] = pupil.id

      redirect_to root_path, notice: 'You entered to site'
    else
      flash.now[:alert] = 'Wrong email or password'

      render :new
    end
  end
  def destroy
    session.delete(user_id)

    redirect_to root_path, notice: "You logged out"
  end
end
