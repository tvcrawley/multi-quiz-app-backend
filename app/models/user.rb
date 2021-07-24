class User < ApplicationRecord
    has_many :question_responses, dependent: :destroy

    has_secure_password
    validates :email, uniqueness: true
end
