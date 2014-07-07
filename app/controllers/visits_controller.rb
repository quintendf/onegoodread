require 'json'
require 'httparty'


class VisitsController < ApplicationController

	def new
		@redirectLink = Article.last.link[rand(Article.last.link.length)]

	end
end
