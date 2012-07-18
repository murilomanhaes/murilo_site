require 'spec_helper'

describe "parceiros/show" do
  before(:each) do
    @parceiro = assign(:parceiro, stub_model(Parceiro,
      :nome => "Nome",
      :endereco => "Endereco"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Endereco/)
  end
end
