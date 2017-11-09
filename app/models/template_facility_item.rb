class TemplateFacilityItem < ApplicationRecord
    belongs_to :template
    belongs_to :facility_item
end
