require 'spec_helper'

describe "contatos/show" do
  before(:each) do
    @contato = assign(:contato, stub_model(Contato,
      :nome => "Nome",
      :email => "Email",
      :telefone => "Telefone",
      :mensagem => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Email/)
    rendered.should match(/Telefone/)
    rendered.should match(/MyText/)
  end
end
