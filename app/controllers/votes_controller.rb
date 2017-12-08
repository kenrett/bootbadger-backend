class VotesController < ApplicationController

  def create
    @submitted_by = Boot.find_by_token(params[:token])
    @boot = Boot.find(params[:boot_id])
    @slogan = Slogan.find(params[:slogan_id])
    if @submitted_by && @boot && @slogan
      @vote = @slogan.votes.create(boot_id: @submitted_by.id)
      render json: @slogan
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:token)
  end

end
