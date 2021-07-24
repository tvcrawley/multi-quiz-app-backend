class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :question_text
      t.string :image
      t.belongs_to :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
