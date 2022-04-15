class CreateSessionQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :session_questions do |t|
      t.references :session, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
