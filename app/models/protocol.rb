class Protocol < ApplicationRecord
    has_many :results, dependent: :destroy
    accepts_nested_attributes_for :results, allow_destroy: true
end
