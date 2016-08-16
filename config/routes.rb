Rails.application.routes.draw do

  mount Cd2Cms::Engine => '/admin'

  resources :enquiries, only: [:new, :create], path: 'contact', path_names: {new: '/'} do
    get 'thanks', on: :collection
  end

  resources :projects, only: [:index, :show]
  resources :services, only: [:index, :show]

  resources :pages, only: [:show], path: ''
  root 'pages#show'


end
