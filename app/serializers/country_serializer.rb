class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name
  # belongs_to :list
end
