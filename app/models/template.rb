class Template < ApplicationRecord
    has_many :questions
    validates :name, presence: true
end
