FactoryGirl.define do
  factory :log do
    referer FFaker::Internet.http_url
    ip '127.0.0.0'
    user_agent "MyString"
    association :url
  end
end
