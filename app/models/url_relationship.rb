class UrlRelationship < ApplicationRecord
  belongs_to :url
  belongs_to :user
end
