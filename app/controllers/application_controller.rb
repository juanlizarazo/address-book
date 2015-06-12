class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale

  private

  # Set locale from URI param. When not available, default to english.
  # If already set and not present on URI, use the one set in session.
  def set_locale
    session[:locale] ||= :en

    locale = params[:lang]
    session[:locale] = locale if %w(en es).include?(locale)

    I18n.locale = session[:locale]
  end
end
