Rails.application.routes.draw do
  root 'welcome#index'

  resources :search, only: [:create, :index]

  resources :legislators do
    collection do
      get '/:id/news', to: "legislator#show"
    end
  end
end
