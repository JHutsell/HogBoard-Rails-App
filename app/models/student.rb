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

    def self.gryffindor_students
        Student.all.select { |student| student.house == "Gryffindor" }
      end
  
      def self.slytherin_students
        Student.all.select { |student| student.house == "Slytherin" }
      end
  
      def self.ravenclaw_students
        Student.all.select { |student| student.house == "Ravenclaw" }
      end
  
      def self.hufflepuff_students
        Student.all.select { |student| student.house == "Hufflepuff" }
      end
end
