class Employee < ApplicationRecord

    validates :name,:email,:job ,:salary,:employment_status,presence: {message: "must be given please"}
    validates :name,:salary, length: { maximum: 10 , minimum: 3}
    validates :email,:name,  uniqueness: { case_sensitive: false }
    validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }


    belongs_to :team, optional: true
    has_one :division, dependent: :nullify
end
