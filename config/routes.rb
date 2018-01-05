Rails.application.routes.draw do
  resources :tasklists do
    resources :steps do
      resources :contents do
        collection do
          patch :sort
        end
      end
    end
  end

  root 'tasklists#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
