class WelcomesController < ApplicationController

	def index
		url = "http://api.randomuser.me/?results=3"
    response = RestClient.get(url)
    @randoms = JSON.parse(response).first[1]
	end 

end 