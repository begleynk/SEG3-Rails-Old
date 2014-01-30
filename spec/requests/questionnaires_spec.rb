require 'spec_helper'
describe "Questionnaires" do
  describe "GET /" do
    
    it "gives a list of questionnaires" do
      questionnaire = Questionnaire.create(title: "First Questionnaire", description: "This is my first questionnaire")

      visit questionnaires_path
      page.should have_content "First Questionnaire"
      page.should have_content "This is my first questionnaire"
    end
  end

  describe "GET /questionnaire/:id" do
    
    it "shows data for a specific questionnaire" do
      questionnaire = Questionnaire.create(title: "Single Questionnaire", description: "This is my first questionnaire")

      questionnaire.questions.create!(title: "Foo Q", subtext: "Das DEscription", required: true)

      visit questionnaire_path(questionnaire)
      page.should have_content "Single Questionnaire"
      page.should have_content "This is my first questionnaire"

      page.should have_content "Foo Q"
      page.should have_content "Das DEscription"
    end

  end
end
