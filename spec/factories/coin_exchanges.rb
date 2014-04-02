# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :coin_exchange do
    coin ""
    exchange ""
    price 1.5
    update_time "2014-04-02 11:36:31"
    url "MyString"
  end
end
