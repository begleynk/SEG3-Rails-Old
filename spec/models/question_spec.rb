require 'spec_helper'

describe Question do
  it "does not save unsupported question types" do
    questionnaire = Questionnaire.create(title: "asd", description: "ASd")

    q = Question.new
    q.title = "Foo"
    q.questionnaire_id = questionnaire.id
    q.subtext = "Foobar"
    q.required = true
    q.question_type = "Your Mom"
    q.save.should == false 
    q.question_type = "Scale"
    q.save.should == true 
  end 
  
  it "must have a questionnaire in order to be saved" do
    questionnaire = Questionnaire.create(title: "asd", description: "ASd")

    q = Question.new
    q.title = "Foo"
    q.subtext = "Foobar"
    q.required = true
    q.question_type = "Scale"
    q.save.should == false 
    q.questionnaire_id = questionnaire.id
    q.save.should == true
  end
end

