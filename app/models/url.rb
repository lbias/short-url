class Url < ApplicationRecord
  has_many :url_relationships
  has_many :users, through: :url_relationships, source: :user
  belongs_to :user

  validates :original_url, presence: true, format: { :with => /\A(http|https)\:\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix }
  validates :original_url, uniqueness: true
  before_validation :set_short_url

  def set_short_url
    random_strs = ['0'..'9', 'A'..'Z', 'a'..'z'].map { |range| range.to_a }.flatten
    self.short_url = 7.times.map { random_strs.sample }.join
  end
end
