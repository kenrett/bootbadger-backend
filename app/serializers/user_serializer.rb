class BootSerializer < ActiveModel::Serializer
  attributes :id, :token, :name, :email
  has_many :slogans
end
