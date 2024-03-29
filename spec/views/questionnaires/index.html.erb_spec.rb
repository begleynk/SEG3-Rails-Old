require 'spec_helper'

describe "questionnaires/index" do
  before(:each) do
    assign(:questionnaires, [
      stub_model(Questionnaire,
        :title => "Title",
        :description => "MyText"
      ),
      stub_model(Questionnaire,
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of questionnaires" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
