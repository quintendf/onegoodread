class CsController < ApplicationController
	def cs
		@redirectLink = CsArticle.offset(rand(CsArticle.count)).first.link
	end

	
end
