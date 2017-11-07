class Question < ApplicationRecord
    belongs_to :template
    has_many :answers, :dependent => :destroy
    accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
    validates :question, :template_id, presence: true
end
