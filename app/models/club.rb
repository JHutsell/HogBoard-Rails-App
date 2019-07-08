class Club < ApplicationRecord
    has_many :memberships
    has_many :students, through: :memberships
    belongs_to :professor
    has_many :chats
end
