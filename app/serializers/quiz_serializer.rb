class QuizSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description
end
