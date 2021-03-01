class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_request_timestamp

  protected

  def set_request_timestamp
    @request_timestamp = Time.now
  end
end
