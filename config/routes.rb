Rails.application.routes.draw do
  root to: 'pages#home'
  get 'work/:id', to: 'works#show', as: :work_show
  get 'category/:id', to: 'categories#show', as: :category_show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/.well-known/pki-validation/', :to => redirect('/89775073377839BF0B1B305FC2C8DE4F.txt')
end
