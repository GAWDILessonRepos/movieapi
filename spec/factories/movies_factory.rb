# DM
FactoryGirl.define do
  factory :movie do
    title Faker::Lorem.sentence
    gross Faker::Number.number(8)
    release Faker::Date.between(5.years.ago, Date.today)
    rating "PG-13"
    description Faker::Lorem.paragraph(2)
  end
end
