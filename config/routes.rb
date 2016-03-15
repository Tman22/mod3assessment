Rails.application.routes.draw do
  root 'welcome#index'

  resources :search, only: [:create, :index]

  scope :legislators do
    get '/:id/news', to: "legislators#show"
  end

end
