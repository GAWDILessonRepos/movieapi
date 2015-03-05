# DM
FactoryGirl.define do
  factory :movie do
    title Faker::Lorem.sentence
    gross Faker::Number.number(8)
    release Faker::Number.number(4)
    rating Faker::Lorem.word
    description Faker::Lorem.paragraph(2)
  end
end
