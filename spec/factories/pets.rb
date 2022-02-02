FactoryBot.define do
  factory :pet do
    association :pet_type
    association :user
    name { "Goma" }

    factory :pet_with_weight_records, traits: [:with_weight_records]

    trait :with_weight_records do
      after(:create) do |pet, evaluator|
        record_count = 10
        create_list(:weight_record, record_count, pet: pet)
        # You may need to reload the record here, depending on your application
        pet.reload
      end
    end
  end

end