Rails.application.routes.draw do
  resources :projects
  resources :sub_categories
  resources :portfolio_sections

  get 'main_page' => 'pages#main_page'
  get 'services' => 'pages#services'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'admin' => 'pages#admin'
  # get 'admin_index' => 'sub_categories#admin_index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
