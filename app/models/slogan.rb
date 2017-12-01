class Slogan < ApplicationRecord
  belongs_to :boot
  has_many   :votes
end
