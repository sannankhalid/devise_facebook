App::Application.routes.draw do
  match '/auth/:service/callback' => 'services#create'
  devise_for :users
  devise_scope :user do
    get "sign_in", :to => "devise/sessions#new"
    get "sign_out", :to => "devise/sessions#destroy"
    get "sign_up", :to => "devise/registrations#new"
  end
  root :to => "home#index"
end
