class ApplicationController < ActionController::Base
  before_action :force_ssl
  protect_from_forgery with: :exception
  add_flash_types :error, :success

  private

  def force_ssl
    if Rails.env.production?
      redirect_to :protocol => 'https' unless request.ssl?
    end
  end
end
