class CreateQuestions < ActiveRecord::Migration[7.2]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :options, array: true, default: []
      t.string :answer
      t.string :difficulty
      t.string :category

      t.timestamps
    end
  end
end
