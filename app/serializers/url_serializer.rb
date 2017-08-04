class UrlSerializer < ActiveModel::Serializer
  attributes :short_url, :original_url
end
