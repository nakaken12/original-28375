FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.middle_name }
    email                 { Faker::Internet.free_email }
    password              { 'pass1234' }
    password_confirmation { 'pass1234' }
  end
end
