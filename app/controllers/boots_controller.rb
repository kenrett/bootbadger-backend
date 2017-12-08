class BootsController < ApplicationController

  def index
    @boots = Boot.all
    render json: @boots
  end

  def create
    @boot = Boot.find_by_name(boot_params['name'])
    @boot.email = boot_params['email']
    @boot.password = boot_params['password']

    if @boot.save
      render json: @boot
    else
      @errors = @boot.errors.full_messages
      render json: @errors
    end
  end

  private

  def boot_params
    params.require(:boot).permit(:name, :email, :password)
  end
end
