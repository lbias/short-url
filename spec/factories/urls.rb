FactoryGirl.define do
  factory :url do
    short_url    FFaker::Internet.http_url
    original_url FFaker::Internet.http_url
    association   :user  
  end
end
