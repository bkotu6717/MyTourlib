FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "admin#{n}@MyTourLib.com"
    end
    first_name 'first_name'
    last_name 'admin'
  end
end
