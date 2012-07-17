# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :novidade do
    titulo "MyString"
    resumo "MyText"
    conteudo "MyText"
    data "2012-07-16"
  end
end
