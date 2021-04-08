FactoryBot.define do
  factory :category_idea do
    category_name { Faker::Lorem.sentence }
    body          { Faker::Lorem.sentence }
  end
end
