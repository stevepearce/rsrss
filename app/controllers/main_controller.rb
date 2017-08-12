class MainController < ApplicationController
  include HTTParty

	def index
    @feeds = Feed.all
    @feed =  params[:feed] ? Feed.find(params[:feed]) : Feed.all.first
    xml = HTTParty.get(@feed.url).body
    parsed = Feedjira::Feed.parse xml
    @entries = parsed.entries.sort { |a, b| b.published <=> a.published }
	end
end
