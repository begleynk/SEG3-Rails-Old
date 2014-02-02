class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :update, :destroy]

  def show
    render json: @question.to_json(include: :question_options), status: :ok
  end

  def create
    @question = Question.new(question_params)
    @question.questionnaire_id = params[:questionnaire_id]

    @question.save
    respond_to do |f|
      f.js
    end
  end

  def update
    if @question.update
      render json: @question.to_json, status: :ok
    else
      render json: @question.errors.to_json, status: :unprocessable_entity
    end
  end

  def destroy
    if @question.destroy
      render json: @question.to_json, status: :ok
    else
      render json: @question.errors.to_json, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question 
      @question = Question.find(params[:id])
    end
    
    def question_params
      params.require(:question).permit(:title, :subtext, :questionnaire_id, :question_type, :required)
    end
end
