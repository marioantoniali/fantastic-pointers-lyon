require 'twitter'
require 'dotenv'

Dotenv.load

class BotTwitter

  def log_in_twitter
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_API_KEY']
           config.consumer_secret     = ENV['TWITTER_API_SECRET_KEY']
           config.access_token        = ENV['TWITTER_TOKEN']
           config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
    end
  end



  def send_tweets#envoi de tweets aux pseudos trouvés ci dessus
    @client.search("formation, dev", result_type: "recent").take(10).each do |tweet|
      id = tweet.id

       if @client.update("@#{tweet.user.screen_name} Vous recherchez une formation gratuite dans les métiers du numérique ? Rejoignez la team @the_hacking_pro ‏pour intégrer la formation de développeur web ! Inscriptions/informations bientôt terminées  ⏩ https://fantastic-pointers.herokuapp.com/",in_reply_to_status_id: id)
          puts "Tweeté à @#{tweet.user.screen_name}"
          save(tweet.user.screen_name)
        end
        @client.favorite(id)#like des tweets recherchés

   end
 end

  def perform
    log_in_twitter
    send_tweets
  end

  private
  def save(destinataire)
    Tweet.create(destinataire: destinataire)
  end

end
