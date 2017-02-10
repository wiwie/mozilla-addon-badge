Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'badges/show_svg/:id' => 'badges#show_svg', format: :svg  
  resources :badges

  root to: 'badges#show', :id => "playurlonkodi"
end
