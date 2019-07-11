class Membership < ApplicationRecord
    belongs_to :student
    belongs_to :club

    validates :student_id, uniqueness: true, on: :create
end
