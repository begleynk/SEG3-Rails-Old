class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end