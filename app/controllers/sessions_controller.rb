class SessionsController < ApplicationController

  def list
    @boots = Boot.where(password_digest: nil)
    render json: @boots
  end


  def create
    @boot = Boot.find_by(email: session_params['email'])
    eap session_params
    eap session_params['email']
    eap session_params['password']
    eap @boot
    if @boot && @boot.authenticate(session_params['password'])
      eap
      render json: @boot
    else
      @errors = ["Boot not found."]
      render json: @errors, status: 422
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
