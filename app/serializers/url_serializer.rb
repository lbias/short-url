class UrlSerializer < ActiveModel::Serializer
  attributes :short_link, :original_url

  def short_link
    "http://localhost:3000/#{object.short_url}"
  end
end
