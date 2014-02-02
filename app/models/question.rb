class Question < ActiveRecord::Base
  belongs_to :questionnaire

  @supported_types = ["Multiple Choice", "Scale", "Free Text"]
  
  validates :questionnaire_id, presence: true
  validates :question_type, inclusion: { in: @supported_types, message: "Not a valid question type!" }

end
