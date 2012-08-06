require 'spec_helper'

describe "contatos/index" do
  before(:each) do
    assign(:contatos, [
      stub_model(Contato,
        :nome => "Nome",
        :email => "Email",
        :telefone => "Telefone",
        :mensagem => "MyText"
      ),
      stub_model(Contato,
        :nome => "Nome",
        :email => "Email",
        :telefone => "Telefone",
        :mensagem => "MyText"
      )
    ])
  end

  it "renders a list of contatos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
