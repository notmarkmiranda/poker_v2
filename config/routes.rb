Rails.application.routes.draw do
  root to: "pages#index"

  get "/sign-up", to: "users#new", as: "sign_up"
end
