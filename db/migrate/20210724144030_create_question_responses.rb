class CreateQuestionResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :question_responses do |t|
      t.belongs_to :answer_option, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
