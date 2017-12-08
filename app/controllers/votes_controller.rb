class VotesController < ApplicationController

  def create
    @submitted_by = Boot.find_by_token(vote_params['token'])
    @boot = Boot.find(params[:boot_id])
    @slogan = Slogan.find(params[:slogan_id])
    if @submitted_by && @boot && @slogan
      @vote = @slogan.votes.new(boot_id: @submitted_by.id)
      if @vote.save
        render json: @slogan
      else
        eap @vote.errors
        render json: @vote.errors
      end
    else
      p "* " * 90
      eap @submitted_by
      eap @boot
      eap @slogan
    end

  end

  private

  def vote_params
    params.require(:vote).permit(:token)
  end

end
