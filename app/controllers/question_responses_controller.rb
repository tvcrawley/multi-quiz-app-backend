class QuestionResponsesController < ApplicationController
    def index
        user_responses = User.find(1).question_responses
        quiz_responses = user_responses.filter {|res| res.question.quiz_id == params[:quiz_id].to_i}
        correct_answers = quiz_responses.filter {|response| response.answer_option.correct_answer}

        render json: correct_answers.count
    end

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
