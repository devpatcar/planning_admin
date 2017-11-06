class Facility < ApplicationRecord
    has_many :facility_items, dependent: :destroy
    validates :name, presence: true 
end
