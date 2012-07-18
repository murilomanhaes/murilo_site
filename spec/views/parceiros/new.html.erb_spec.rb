require 'spec_helper'

describe "parceiros/new" do
  before(:each) do
    assign(:parceiro, stub_model(Parceiro,
      :nome => "MyString",
      :endereco => "MyString"
    ).as_new_record)
  end

  it "renders new parceiro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parceiros_path, :method => "post" do
      assert_select "input#parceiro_nome", :name => "parceiro[nome]"
      assert_select "input#parceiro_endereco", :name => "parceiro[endereco]"
    end
  end
end
