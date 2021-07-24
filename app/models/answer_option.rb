class AnswerOption < ApplicationRecord
  belongs_to :question
  has_many :question_responses, dependent: :destroy

  validates :answer_text, presence: true, allow_blank: false
end
