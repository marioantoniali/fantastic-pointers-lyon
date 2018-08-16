class TwittersController < ApplicationController
  def index

  end

  def twitter
  	BotTwitter.new.perform
  end
end
