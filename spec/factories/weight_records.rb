FactoryBot.define do
  factory :weight_record do
    association :pet
    weight { rand(2560..3200) }
  end
end