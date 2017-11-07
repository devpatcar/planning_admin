class Facility < ApplicationRecord
    has_many :facility_items, dependent: :destroy
    validates :name, presence: true
    accepts_nested_attributes_for :facility_items, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true 
end
