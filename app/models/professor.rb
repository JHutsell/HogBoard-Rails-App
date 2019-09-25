class Professor < ApplicationRecord
    has_many :courses
    has_many :clubs
    
end
