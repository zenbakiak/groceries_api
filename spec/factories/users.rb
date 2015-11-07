FactoryGirl.define do
  factory :user do
    email FFaker::Internet.email
    password 'changeme'
    password_confirmation 'changeme'
    first_name FFaker::Name.first_name
    last_name FFaker::Name.last_name
  end

  factory :consumer, parent: :user do
    after(:create) do |user|
      user.add_role :consumer
    end
  end

  factory :root_user, parent: :user do
    after(:create) do |user|
      user.add_role :root
    end
  end


end
