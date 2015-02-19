FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "admin#{n}@MyTourLib.com"
    end
    first_name 'first_name'
    last_name 'admin'

    trait :request_user do
    	first_name 'second_user'
    	last_name 'last_user'
    end
  end
end
