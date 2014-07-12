class Article < ActiveRecord::Base
	validates :link, uniqueness: true
end
