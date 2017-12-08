class SloganSerializer < ActiveModel::Serializer
  attributes :id, :body, :submitted_by, :total_votes
end
