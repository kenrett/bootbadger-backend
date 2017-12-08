class Boot < ApplicationRecord
  has_many :slogans
  has_many :votes

  has_secure_password validations: false

  after_create :gen_token
  validates :name, presence: true, uniqueness: true

  def gen_token
    payload = {boot: self.id}
    self.token = JWT.encode(payload, self.password_digest, 'none')
    self.save
    # JWT.decode(token, @boot.password_digest, false)
  end

end
