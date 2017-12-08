class Vote < ApplicationRecord
  belongs_to :boot
  belongs_to :slogan

  validates_uniqueness_of :boot_id, :scope => :slogan_id
end
