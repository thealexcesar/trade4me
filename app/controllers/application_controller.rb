class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protected
  def admin?
    if self.level == :admin
      true
    else
      redirect_to, flash[:alert] = I18n.t('general.error_message.denied') # Fixme!
      return false
    end
  end
end
