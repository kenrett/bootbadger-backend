class BootsController < ApplicationController

  def index
    @boots = Boot.all.includes(:slogans, :votes)
    render json: @boots
  end

  def create
    @boot = Boot.includes(:slogans, :votes).includes(:votes).find_by_name(boot_params['name'])
    @boot.email = boot_params['email']
    @boot.password = boot_params['password']

    if @boot.save
      render json: @boot
    else
      @errors = @boot.errors.full_messages
      render json: @errors, status: 422
    end
  end

  private

  def boot_params
    params.require(:boot).permit(:name, :email, :password)
  end
end
