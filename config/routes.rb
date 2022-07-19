Rails.application.routes.draw do
  devise_for :users, controllers: {
                       sessions: "users/sessions",
                       passwords: "users/passwords",
                       registrations: "users/registrations",
                       confirmations: "users/confirmations",
                       unlocks: "users/unlocks",
                     }
  root "homes#index"

  get "/confirmation_pending" => "homes#after_registration_path"
  get "/user_profile" => "homes#user_details"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
