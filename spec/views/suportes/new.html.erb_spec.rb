require 'spec_helper'

describe "suportes/new" do
  before(:each) do
    assign(:suporte, stub_model(Suporte,
      :usuario_id => 1,
      :problema => "MyText",
      :conclusao => "MyText"
    ).as_new_record)
  end

  it "renders new suporte form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => suportes_path, :method => "post" do
      assert_select "input#suporte_usuario_id", :name => "suporte[usuario_id]"
      assert_select "textarea#suporte_problema", :name => "suporte[problema]"
      assert_select "textarea#suporte_conclusao", :name => "suporte[conclusao]"
    end
  end
end
