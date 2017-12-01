class Boot < ApplicationRecord
  has_many :slogans
  has_many :votes

  has_secure_password

  # validates :email, presence: true, uniqueness: true
end
