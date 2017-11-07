class Scheduling < ApplicationRecord
    belongs_to :template
    validates :name, :template_id, presence: true 
end
