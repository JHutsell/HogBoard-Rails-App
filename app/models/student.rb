class Student < ApplicationRecord
    has_many :syllabuses
    has_many :courses, through: :syllabuses
    # has_many :professors, through: :courses
    has_many :memberships
    has_many :clubs, through: :memberships
    has_many :chats

    has_secure_password

    validates_uniqueness_of :username
    validates_uniqueness_of :name

    def shared_house
        Student.all.select { |student| student.house == self.house }
    end
end
