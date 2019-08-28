FactoryBot.define do
  factory :time_table do
    checkin { Faker::Time.between_dates(from: Date.today - 1.year, to: Date.today - 1) }
    checkout { checkin + Faker::Number.between(from: 1, to: 10).hours }
    seconds { checkout - checkin }
    status { 1 }
  end
end