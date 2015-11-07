class Api::ApiController < ApplicationController

  protect_from_forgery with: :null_session
  respond_to :json

  serialization_scope :view_context

  include Toll::Controllers::Authenticable

  def unauthorized
    redirect_to root_url(subdomain: false)
  end
end
