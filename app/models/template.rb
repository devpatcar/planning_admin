class Template < ApplicationRecord
    has_many :schedulings   
    has_many :items, :dependent => :destroy
    has_many :facilityitems, :through => :items
    validates :name, presence: true
    has_many :questions   
end
