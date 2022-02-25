class Team < ApplicationRecord

    validates :name,:description,:leader_id,presence: {message: "must be given please"}
    validates :name,:description,length: { maximum: 100 , minimum: 3}
    validates :name,uniqueness: { case_sensitive: false }


    has_many :employees, dependent: :nullify
    has_many :targets, dependent: :nullify
    belongs_to :division, optional: true
end
