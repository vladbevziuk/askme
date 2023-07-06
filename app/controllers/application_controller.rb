class ApplicationController < ActionController::Base
  helper_method :current_user
  private

  def current_user
    @current_user ||= Pupil.find_by(id: session[:pupil_id]) if session[pupil_id]


  end
end
