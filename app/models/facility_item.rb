class FacilityItem < ApplicationRecord
    belongs_to :facility
    validates :name, :facility_id, presence: true
end
