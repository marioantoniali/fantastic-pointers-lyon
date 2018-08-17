Rails.application.routes.draw do
  root 'landing_page#index'
  post 'subscribe' => 'landing_page#subscribe'

  get 'twitters/index'  => 'admin#twitter'
  get 'admin/dashboard' => 'admin#dashboard'
  get 'admin/scrapper'  => 'admin#scrapper'
  get 'admin/twitter'   => 'admin#twitter'
  get 'admin'           => 'admin#dashboard'

  get 'admin/service_scrapper'=> 'admin#service_scrapper'
  get 'admin/service_twitter' => 'admin#service_twitter'
end
