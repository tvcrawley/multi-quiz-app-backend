class QuestionsController < ApplicationController
    def index
        questions = Quiz.find(params[:id]).questions
        render json: questions
    end
end
