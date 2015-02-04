class Answer < ActiveRecord::Base
  belongs_to :question
  validates :correct, uniqueness: { scope: :question_id }, allow_nil: true

  scope :correct_answers, -> { where(correct: true) }
end
