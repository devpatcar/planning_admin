class Template < ApplicationRecord
    has_many :schedulings   
    has_many :template_facility_item
    has_many :facility_item, through: :template_facility_item
    has_many :questions   
    validates :name, presence: true
    accepts_nested_attributes_for :schedulings, :reject_if => lambda { |a| a[:name].blank? } 
    accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:question].blank? }   
end
