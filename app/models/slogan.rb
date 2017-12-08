class Slogan < ApplicationRecord
  belongs_to :boot
  has_many   :votes

  def total_votes
    self.votes.count
  end
end
