class Question < ActiveRecord::Base
  belongs_to :questionnaire
  has_many :question_options

  @supported_types = ["Multiple Choice", "Scale", "Free Text"]
  
  validates :questionnaire_id, presence: true
  validates :question_type, inclusion: { in: @supported_types, message: "Not a valid question type!" }

end
