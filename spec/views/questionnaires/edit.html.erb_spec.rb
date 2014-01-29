require 'spec_helper'

describe "questionnaires/edit" do
  before(:each) do
    @questionnaire = assign(:questionnaire, stub_model(Questionnaire,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit questionnaire form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", questionnaire_path(@questionnaire), "post" do
      assert_select "input#questionnaire_title[name=?]", "questionnaire[title]"
      assert_select "textarea#questionnaire_description[name=?]", "questionnaire[description]"
    end
  end
end
