class AnswerOptionSerializer < ActiveModel::Serializer
  attributes :id, :answer_text
  has_one :question
end
