class Boot < ApplicationRecord
  has_many :slogans
  has_many :votes

  has_secure_password

  after_create :gen_token

  def gen_token
    payload = {boot: self.id}
    self.token = JWT.encode(payload, self.password_digest, 'none')
    self.save
    # JWT.decode(token, @boot.password_digest, false)
  end

  # validates :email, presence: true, uniqueness: true
end
