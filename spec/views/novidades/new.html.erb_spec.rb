require 'spec_helper'

describe "novidades/new" do
  before(:each) do
    assign(:novidade, stub_model(Novidade,
      :titulo => "MyString",
      :resumo => "MyText",
      :conteudo => "MyText"
    ).as_new_record)
  end

  it "renders new novidade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => novidades_path, :method => "post" do
      assert_select "input#novidade_titulo", :name => "novidade[titulo]"
      assert_select "textarea#novidade_resumo", :name => "novidade[resumo]"
      assert_select "textarea#novidade_conteudo", :name => "novidade[conteudo]"
    end
  end
end
