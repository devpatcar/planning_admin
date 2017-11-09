class FacilityItem < ApplicationRecord
    belongs_to  :facility  
    has_many :template_facility_item
    has_many :template, through: :template_facility_item
    validates   :name, presence: true
end
