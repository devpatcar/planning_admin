class Question < ApplicationRecord    
    belongs_to :template
    has_many :answers
    has_many :results, :through => :answers   
    validates :question, presence: true
end
