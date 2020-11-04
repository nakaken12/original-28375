FactoryBot.define do
  factory :post_title do
    content     { Faker::Lorem.sentence }
    genre_id    { 2 }
    title_name  { 'JOKER' }
  end
end
