class SessionsController < ApplicationController

  def create
    @boot = Boot.find(session_params[:email])

    if @boot && @boot.password == session_params[:password]
      payload = {boot: @boot}
      token = JWT.encode(payload, @boot.password_digest, 'none') 
      # JWT.decode(token, @boot.password_digest, false)
      render json: {token: token}
    else
      @errors = ["Boot not found."]
      render json: @errors
    end
  end
    
  def destroy
    render json: {token: null}
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
