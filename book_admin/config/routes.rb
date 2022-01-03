Rails.application.routes.draw do
  get 'profiles/show'
  get 'profiles/edit'
  get 'profiles/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/books/:id" => "books#show"
  delete "/books/:id" => "books#destroy"
  resources :publishers
end
