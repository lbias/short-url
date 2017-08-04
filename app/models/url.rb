class Url < ApplicationRecord
  has_many :url_relationships
  has_many :users, through: :url_relationships, source: :user
  belongs_to :user

  validates :short_url,    presence: true
  validates :original_url, presence: true
end
