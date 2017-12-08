class BootSerializer < ActiveModel::Serializer
  attributes :id, :token, :name, :email, :img_url
  has_many :slogans

  def slogans
    object.slogans.to_a.sort_by(&:total_votes).reverse
  end
end
