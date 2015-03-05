# DM
FactoryGirl.define do
  factory :movie do
    title Faker::Lorem.sentence
    gross Faker::Number.number(8)
    release Faker::Date.between(200.days.ago, Date.today)
    rating Faker::Lorem.word
    description Faker::Lorem.paragraph(2)
  end
end
