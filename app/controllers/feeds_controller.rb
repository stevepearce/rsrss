class FeedsController < ApplicationController
  def create
    feed = Feed.new(feed_attributes)
    if feed.save
    end
  end

  private
  
  def feed_attributes
    params.require(:feed).permit(:name, :url)
  end

end
