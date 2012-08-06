require 'spec_helper'

describe "contatos/edit" do
  before(:each) do
    @contato = assign(:contato, stub_model(Contato,
      :nome => "MyString",
      :email => "MyString",
      :telefone => "MyString",
      :mensagem => "MyText"
    ))
  end

  it "renders the edit contato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contatos_path(@contato), :method => "post" do
      assert_select "input#contato_nome", :name => "contato[nome]"
      assert_select "input#contato_email", :name => "contato[email]"
      assert_select "input#contato_telefone", :name => "contato[telefone]"
      assert_select "textarea#contato_mensagem", :name => "contato[mensagem]"
    end
  end
end
