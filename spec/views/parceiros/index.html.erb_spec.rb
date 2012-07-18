require 'spec_helper'

describe "parceiros/index" do
  before(:each) do
    assign(:parceiros, [
      stub_model(Parceiro,
        :nome => "Nome",
        :endereco => "Endereco"
      ),
      stub_model(Parceiro,
        :nome => "Nome",
        :endereco => "Endereco"
      )
    ])
  end

  it "renders a list of parceiros" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
  end
end
