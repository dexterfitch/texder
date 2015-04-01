FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Doc Lollipop #{n}"}
    sequence(:number) { |n| "123456789#{n}"}
    sequence(:email) { |n| "docpop#{n}@unicornemail.com"}
    password("12345678")
    password_confirmation("12345678")
  end
end
