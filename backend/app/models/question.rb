class Question < ApplicationRecord
  validates :question, presence: true
  validates :options, presence: true, length: { is: 4 }
  validates :answer, presence: true
  validates :difficulty, inclusion: { in: %w[easy medium hard] }
  validates :category, inclusion: { in: [
    "history", 
    "lithurg and sacraments", 
    "doctrine", 
    "culture", 
    "bible", 
    "popes and saints"
  ] }

  # Scopes (filtering convenience)
  scope :easy, -> { where(difficulty: "easy") }
  scope :medium, -> { where(difficulty: "medium") }
  scope :hard, -> { where(difficulty: "hard") }

  # Sanitize options
  def correct_answer_index
    options.find_index(answer)
  end
end
