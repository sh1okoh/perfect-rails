class ApplicationController < ActionController::Base
  before_action do
    redirect_to access_denied_path if params[:token].blank?
  end

  rescue_from LoginFailed, with: :login_failed

  private

  def login_failed
    render template: "shared/login_failed", status: 401
  end
end
