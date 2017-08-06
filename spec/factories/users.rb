FactoryGirl.define do
  factory :user do
    name  FFaker::Name.name
    sequence(:email) { |n| "#{n}_#{FFaker::Internet.email}" }
    password 'secret'
  end
end
