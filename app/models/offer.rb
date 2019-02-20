class Offer < ApplicationRecord
  belongs_to :student, class_name: 'User', foreign_key: :student_id, optional: true
  belongs_to :teacher, class_name: 'User', foreign_key: :teacher_id

  validate :student_is_not_teacher

  private

  def student_is_not_teacher
    errors.add(:student, "cannot be the same as teacher") if teacher == student
  end
end
