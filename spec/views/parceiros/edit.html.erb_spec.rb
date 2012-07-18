require 'spec_helper'

describe "parceiros/edit" do
  before(:each) do
    @parceiro = assign(:parceiro, stub_model(Parceiro,
      :nome => "MyString",
      :endereco => "MyString"
    ))
  end

  it "renders the edit parceiro form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parceiros_path(@parceiro), :method => "post" do
      assert_select "input#parceiro_nome", :name => "parceiro[nome]"
      assert_select "input#parceiro_endereco", :name => "parceiro[endereco]"
    end
  end
end
