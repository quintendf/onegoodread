class CsArticle < ActiveRecord::Base
	validates :link, uniqueness: true
end
