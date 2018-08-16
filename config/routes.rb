Rails.application.routes.draw do
  get 'twitters/index'
  root 'landing_page#index'
  post 'subscribe' => 'landing_page#subscribe'
end
