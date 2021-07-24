class QuestionResponseSerializer < ActiveModel::Serializer
  attributes :id
  has_one :answer_option
  has_one :user
end
