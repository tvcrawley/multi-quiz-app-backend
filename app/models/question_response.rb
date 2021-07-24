class QuestionResponse < ApplicationRecord
  belongs_to :answer_option
  belongs_to :user

  validates_presence_of :answer_option_id, :user_id
end
