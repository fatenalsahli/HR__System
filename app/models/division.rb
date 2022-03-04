class Division < ApplicationRecord

    validates :teams,:name,:description,:name,presence: {}
    validates :name,:description,length: { maximum: 100 , minimum: 3}
    validates :name, :description , uniqueness: { case_sensitive: false }

    belongs_to :employee, optional: true
    has_many :teams , dependent: :destroy
end
