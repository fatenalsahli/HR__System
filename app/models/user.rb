class User < ApplicationRecord

    validates :name,:email,:password ,presence: {}
    validates :name, length: { maximum: 10 , minimum: 3}
    validates :password, length: { in: 6..20 }
    validates :email,:name, uniqueness: { case_sensitive: false }
    validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }

     has_one_attached :cover 
end
