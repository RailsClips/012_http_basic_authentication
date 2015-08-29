Rails.application.routes.draw do
  namespace :api do
    get 'projects', to: "projects#index"
    get 'project_:id', to: "projects#show"
  end

  root to: "projects#index"

  resources :projects do
    resources :tasks do
      patch :complete, on: :member
    end
  end
end
