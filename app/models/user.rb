class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true

  has_many :url_relationships
  has_many :urls, through: :url_relationships, source: :url
end
