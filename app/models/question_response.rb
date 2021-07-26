class QuestionResponse < ApplicationRecord
  belongs_to :answer_option
  belongs_to :user
  belongs_to :question

  validates_presence_of :answer_option_id, :user_id

  validates :question, uniqueness: { scope: :user_id,
  message: "can only be answered once" }
end
