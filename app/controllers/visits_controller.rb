class VisitsController < ApplicationController

	def new
		@redirectLink = Article.offset(rand(Article.count)).first.link
	end


end
