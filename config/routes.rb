Rails.application.routes.draw do
  root 'welcome#index'

  resources :search, only: [:create, :index]

  get 'legislators/:id/news', to: "legislators#show", as: "legislator"

end
