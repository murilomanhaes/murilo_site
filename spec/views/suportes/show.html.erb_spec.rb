require 'spec_helper'

describe "suportes/show" do
  before(:each) do
    @suporte = assign(:suporte, stub_model(Suporte,
      :usuario_id => 1,
      :problema => "MyText",
      :conclusao => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
