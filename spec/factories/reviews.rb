FactoryBot.define do
  factory :review do
    rating { 1 }
    description { "MyText" }
    book { nil }
    user { nil }
  end
end
