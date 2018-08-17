desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."
  BotTwitter.new.perform
  Scrapper.new.perform
  puts "done."
end
