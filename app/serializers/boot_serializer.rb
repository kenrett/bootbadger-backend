class BootSerializer < ActiveModel::Serializer
  attributes :id, :token, :name, :email
  has_many :slogans

  def slogans
    object.slogans.to_a.sort_by(&:total_votes)
  end
end
