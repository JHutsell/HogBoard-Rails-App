class Course < ApplicationRecord
    has_many :syllabuses
    has_many :students, through: :syllabuses
    belongs_to :professor

end
