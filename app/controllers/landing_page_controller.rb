class LandingPageController < ApplicationController
  def index
  end

  def subscribe
    email = params['email']

    if( !Mailchimp.new.subscribe(email) )
      flash[:danger] = "Impossible de vous ajouter à la newsletter !"
    else
      flash[:success] = "Welcome moussaillon ! ⛵️ 😇 !"
    end

    redirect_to root_path
  end
end
