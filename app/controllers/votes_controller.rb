class VotesController < ApplicationController

  def create
    @boot = Boot.find(params[:boot_id])
    @submitted_by = Boot.find_by_token(params[:token])
    @slogan = Slogan.find(params[:slogan_id])
    @vote = @slogan.votes.create(boot_id: @submitted_by.id)
  end

  private

  def vote_params
    params.require(:vote).permit(:token)
  end

end
