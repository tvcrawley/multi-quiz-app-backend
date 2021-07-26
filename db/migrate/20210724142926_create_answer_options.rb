class CreateAnswerOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_options do |t|
      t.string :answer_text
      t.boolean :correct_answer
      t.belongs_to :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
