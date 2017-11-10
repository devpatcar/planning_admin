class Template < ApplicationRecord
    has_many :schedulings   
    has_many :template_facility_item
    has_many :facility_item, through: :template_facility_item
    has_many :facility, through: :facility_item
    has_many :questions
    has_many :responses, :through => :questions   
    validates :name, presence: true 
end
