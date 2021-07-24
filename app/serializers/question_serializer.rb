class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question_text, :image
  has_one :quiz
end
