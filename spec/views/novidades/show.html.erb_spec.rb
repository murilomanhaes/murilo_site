require 'spec_helper'

describe "novidades/show" do
  before(:each) do
    @novidade = assign(:novidade, stub_model(Novidade,
      :titulo => "Titulo",
      :resumo => "MyText",
      :conteudo => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titulo/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
