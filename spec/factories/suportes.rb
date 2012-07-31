# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :suporte do
    usuario_id 1
    problema "MyText"
    data "2012-07-30"
    data_conclusao "2012-07-30"
    conclusao "MyText"
  end
end
