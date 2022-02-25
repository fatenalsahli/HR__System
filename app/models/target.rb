class Target < ApplicationRecord

    
    validates :title,:description,:start_date ,:finish_date,:status,presence: {message: "must be given please"}
    validates :title,:description,:team,:status, length: { maximum: 100 , minimum: 3}
    validates :title, uniqueness: true
    validates :finish_date, comparison: { greater_than: :start_date }
   # validates :start_date, comparison: { Date.today: :start_date }
  
    belongs_to :team, optional: true 
end
