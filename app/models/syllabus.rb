class Syllabus < ApplicationRecord
    belongs_to :student
    belongs_to :course

    validates_uniqueness_of :course_id, :scope => [:student_id], on: :create
end
