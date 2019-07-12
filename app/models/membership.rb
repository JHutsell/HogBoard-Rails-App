class Membership < ApplicationRecord
    belongs_to :student
    belongs_to :club

    validates_uniqueness_of :club_id, :scope => [:student_id], on: :create
end
