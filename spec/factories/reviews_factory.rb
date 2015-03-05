# DM
FactoryGirl.define do
  factory :review do
    comment Faker::Lorem.paragraph(1)
    stars Faker::Number.digit
    reviewer Faker::Name.name
    movie
  end
end
