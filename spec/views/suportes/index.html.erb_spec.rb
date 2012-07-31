require 'spec_helper'

describe "suportes/index" do
  before(:each) do
    assign(:suportes, [
      stub_model(Suporte,
        :usuario_id => 1,
        :problema => "MyText",
        :conclusao => "MyText"
      ),
      stub_model(Suporte,
        :usuario_id => 1,
        :problema => "MyText",
        :conclusao => "MyText"
      )
    ])
  end

  it "renders a list of suportes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
