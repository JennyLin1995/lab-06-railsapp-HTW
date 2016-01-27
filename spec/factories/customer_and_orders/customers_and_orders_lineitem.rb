FactoryGirl.define do
  factory :orderJennyNat, class: Order do
    association :customer, factory: :track
    placed_on {2.days.ago}
    status :new
  end
  factory :line_item1, class: 'Lineitem' do
    association :pumpkin, factory: :FancyCarnival
  end
  factory :line_item2, class: 'Lineitem' do
    association :pumpkin, factory: :FancySweetDumplig
  end
  factory :orderWithFancyCarnival, parent: :orderTimur do
    after(:create) { |order| create(:line_item1, order: order)}
  end

  factory :orderWithFancySweetDumpling, parent: :orderTimur do
    after(:create) { |order| create(:line_item2, order: order)}
  end
end
