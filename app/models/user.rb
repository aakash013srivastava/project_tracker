class User < ApplicationRecord

has_many :articles
has_secure_password

EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

validates :username, :presence => true,
					  :uniqueness => true,			
					:length => {:maximum => 25}
					 
validates :email, :presence => true,
				  :uniqueness => true,
				  :length => {:within => 0..25},
				  :format => EMAIL_REGEX
				  
scope :sorted, lambda {order("username ASC")}

end
