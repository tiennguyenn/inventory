Rails.application.routes.draw do

  # scope 

  # get 'profile', to: 'user#index'

  # post 'login', to: 'user#login'

  # match 'user', to: 'user#index', via: [:get, :post]

  # get ':id', to: 'user#index', id: /\d/

  # get '(:id)', to: 'user#index'

  # get '(:id)', to: 'store#index'

  # scope '(:locale)', locale: /en|vn/, default: {locale: "en"} do
  #   get '/', to: 'store#index'
  # end

  # resources :tests, path_names: {new: 'sss'}


  # root 'store#index'
  
  # direct :homepage do
  #   'htps:/sdfd.cm'
  # end

  # get 'photos(/:id)', to: 'photos#index'

  # get 'books/:id', to: 'books#index', as: 'books'

  # resources :photos do
  #   get 'preview', on: :new
  # end

  # get "healthz" => "rails/health#show", as: :rails_health_check

  get '/', to: 'store#index'
  get '/testx', to: 'store#testx'

  resources :tests
  
  # get 'test', to: 'test#index'
  # get 'test/show', to: 'test#show'
  # get 'store', to: 'store#index'

  # namespace :admin do
  #   resources :models
  # end
  
  # scope path: :admin, module: :admin do
  #   resources :models, path_names: {new: :abc}
  # end

  # scope ':account_id' do
  #   resources :articles, module: :admin
  # end


  # get 'aaa/:id', to: redirect { |p,req| "admin/models/#{p[:id]}" }

  # direct :homepage do
  #   'https://abc.com'
  # end

  # constraints(AdminConstraint.new) do
  #   constraints(RestrictedListConstraint.new) do
  #     get '*pathx', to: 'store#index'
  #   end
  # end

  
  
  # root 'store#index'
  # namespace :admin do
  #   get '/', to: 'dashboard#index'
  #   resources :smartphones
  #   resources :models
  #   resources :manufacturers
  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
