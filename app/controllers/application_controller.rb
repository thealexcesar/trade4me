class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  protected
  def admin?
    if current_user.level == :admin
      redirect_to "/", alert: I18n.t("general.error_message.denied")
      return false
    else
      true
    end
  end
end
