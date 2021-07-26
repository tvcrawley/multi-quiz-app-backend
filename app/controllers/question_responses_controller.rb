class QuestionResponsesController < ApplicationController
    def create
        requestData = JSON.parse(request.body.read)
        user_id = User.find_by({ email: requestData["userEmail"] }).id
        answer_option_id = requestData["answerOptionId"]
        question_id = AnswerOption.find(answer_option_id).question.id

        question_response = QuestionResponse.create({user_id: user_id, answer_option_id: answer_option_id, question_id: question_id})

        if question_response.valid?
            render json: question_response
        else
            render json: question_response.errors.full_messages
        end
    end
end
