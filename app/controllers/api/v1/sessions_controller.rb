class Api::V1::SessionsController < Api::ApiController
  before_action :authenticate!, only: [:destroy]

  def create
    user_email = params[:session][:email]
    user_password = params[:session][:password]

    user = user_email.present? && User.find_by(email: user_email)
    # => user
    # => nil

    if user && user.valid_password?(user_password)
      # the authenticate_with_token is provided by the Toll gem
      user.authenticate_with_token
      render json: user, status: :ok
    else
      render json: { session: { errors: "Invalid email or password" }}, status: :unprocessable_entity
    end
  end

  def destroy
    current_user.sign_out
    head :no_content
  end
end