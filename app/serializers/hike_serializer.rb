class HikeSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :state, :city, :difficulty, :distance, :elevation, :description
end
