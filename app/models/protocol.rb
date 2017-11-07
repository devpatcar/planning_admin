class Protocol < ApplicationRecord
    has_many :results, dependent: :destroy 
end
