class Article < ApplicationRecord

belongs_to :user

validates :article_name, :presence => :true,
						:length => {:maximum => 50}
						
validates :category, :presence => :true,
					 :length => {:maximum => 50}
					 
validates :content, :presence => :true

end
