# DM
FactoryGirl.define do
  factory :review do
    comment Faker::Lorem.paragraph(1)
    stars 3
    reviewer Faker::Name.name
    movie
  end
end
