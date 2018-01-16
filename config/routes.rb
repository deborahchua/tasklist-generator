Rails.application.routes.draw do
  resources :tasklists do
    resources :steps do
      resources :contents do
          put :sort, on: :collection
      end
    end

  end

  root 'tasklists#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
