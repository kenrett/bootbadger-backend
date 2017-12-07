class SlogansController < ApplicationController

  def create
    @user = User.find(params[:boot_id])
    @submitted_by = User.find_by_token(slogan_params['token'])
    if @user
      @slogan = @user.slogans.new(body: slogan_params['body'], submitted_by: @submitted_by.name)
      if @slogan.save
        render json: @user
      else
        render json: @slogan.errors
      end
    else
    end
  end


  private

  def slogan_params
    params.require(:slogan).permit(:token, :body, :submitted_by)
  end

end
