class AnswerOptionsController < ApplicationController
    def index
        answer_options = Question.find(params[:id]).answer_options
        render json: answer_options
    end
end
