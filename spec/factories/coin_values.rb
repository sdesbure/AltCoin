# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :coin_value do
    coin ""
    exchange ""
    when "2014-04-02 11:52:57"
    difficulty 1.5
    price 1.5
  end
end
