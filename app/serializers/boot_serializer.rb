class BootSerializer < ActiveModel::Serializer
  attributes :id, :token, :name, :email
  has_many :slogans

  def slogans
    object.slogans.order(:total_votes)
  end
end
