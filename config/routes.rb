Rails.application.routes.draw do
  root 'landing_page#index'
  post 'subscribe' => 'landing_page#subscribe'
end
