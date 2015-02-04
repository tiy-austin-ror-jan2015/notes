require 'open-uri'
class SearchController < ApplicationController
	def index
    query = params.fetch(:query, 'ipod')
    url = "http://api.walmartlabs.com/v1/search?apikey=t5k2mrf5py2s5nsgd3yg4usd&query=#{query}"
    response = JSON.parse(open(url).read)
    @items = response["items"]
	end
end
