class Question < ApplicationRecord
    belongs_to :template
    validates :question, :template_id, presence: true
end
