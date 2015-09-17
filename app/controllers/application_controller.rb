class ApplicationController < ActionController::Base
  include JsEnv
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: exception.message
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:name]
    devise_parameter_sanitizer.for(:account_update) << [:name]
  end

  def set_locale
    locales = ['en']
    I18n.locale = if user_signed_in? && current_user.locale.present?
                    current_user.locale
                  elsif session[:locale].present?
                    session[:locale]
                  else
                    if locale = http_accept_language.preferred_language_from(locales)
                      locale
                    elsif locale = http_accept_language.compatible_language_from(locales)
                      locale
                    else
                      I18n.default_locale
                    end
                  end
  end
end
