class AdminController < ApplicationController
  def dashboard
  end

  def scrapper
    @recipients = Recipient.all
  end

  def twitter
    @tweets = Tweet.all
  end

  def service_scrapper
    Scrapper.new.perform
    redirect_to admin_path
  end

  def service_twitter
    BotTwitter.new.perform
    redirect_to admin_path
  end
end
