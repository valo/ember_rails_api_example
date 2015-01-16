FactoryGirl.define do
  factory :project do
    name "Shopping list"
  end

  factory :task do
    name "Milk"

    association :project
  end
end
