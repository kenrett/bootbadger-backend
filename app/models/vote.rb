class Vote < ApplicationRecord
  belongs_to :boot
  belongs_to :slogan
end
