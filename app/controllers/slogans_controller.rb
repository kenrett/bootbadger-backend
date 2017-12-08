class SlogansController < ApplicationController

  def create
    @boot = Boot.find(params[:boot_id])
    @submitted_by = Boot.find_by_token(slogan_params['token'])

    if @boot && @submitted_by
      @slogan = @boot.slogans.new(body: slogan_params['body'], submitted_by: @submitted_by.name)
      if @slogan.save
        render json: @boot
      else
        render json: @slogan.errors
      end
    else
      status 421
    end
  end


  private

  def slogan_params
    params.require(:slogan).permit(:token, :body)
  end

end
