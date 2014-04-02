# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :coin do
    name "MyString"
    algorithm "MyString"
    tag "MyString"
    difficulty 1.5
    update_date "2014-04-02 11:32:33"
  end
end
