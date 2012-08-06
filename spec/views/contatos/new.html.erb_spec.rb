require 'spec_helper'

describe "contatos/new" do
  before(:each) do
    assign(:contato, stub_model(Contato,
      :nome => "MyString",
      :email => "MyString",
      :telefone => "MyString",
      :mensagem => "MyText"
    ).as_new_record)
  end

  it "renders new contato form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contatos_path, :method => "post" do
      assert_select "input#contato_nome", :name => "contato[nome]"
      assert_select "input#contato_email", :name => "contato[email]"
      assert_select "input#contato_telefone", :name => "contato[telefone]"
      assert_select "textarea#contato_mensagem", :name => "contato[mensagem]"
    end
  end
end
