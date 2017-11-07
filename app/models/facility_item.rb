class FacilityItem < ApplicationRecord
    belongs_to  :facility   
    has_many :items, :dependent => :destroy
    has_many :templates, :through => :items
    validates   :name, :facility_id, presence: true
end
