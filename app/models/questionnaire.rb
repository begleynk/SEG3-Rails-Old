class Questionnaire < ActiveRecord::Base
  has_many :questions, include: [:question_options]
end
