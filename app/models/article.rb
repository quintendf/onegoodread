class Article < ActiveRecord::Base
	serialize :link, Array
end
