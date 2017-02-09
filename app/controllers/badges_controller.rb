class BadgesController < ApplicationController
	def show
		addonId = params[:id]
		url = "https://addons.mozilla.org/api/v3/addons/addon/" + addonId + "/"
		uri = URI(url)
		response = Net::HTTP.get(uri)
		@json = JSON.parse(response)

		url = "https://addons.mozilla.org/api/v3/addons/addon/" + addonId + "/reviews/"
		uri = URI(url)
		response = Net::HTTP.get(uri)
		@jsonReviews = JSON.parse(response)
	end
	
	def show_svg
		addonId = params[:id]
		url = "https://addons.mozilla.org/api/v3/addons/addon/" + addonId + "/"
		uri = URI(url)
		response = Net::HTTP.get(uri)
		@json = JSON.parse(response)

		url = "https://addons.mozilla.org/api/v3/addons/addon/" + addonId + "/reviews/"
		uri = URI(url)
		response = Net::HTTP.get(uri)
		@jsonReviews = JSON.parse(response)


	end
end
