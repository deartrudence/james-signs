Rails.application.routes.draw do
  devise_for :users
  get 'picture/sort'

  resources :projects
  resources :sub_categories
  resources :portfolio_sections

  root to: "pages#main_page"
  get 'main_page' => 'pages#main_page'
  get 'services' => 'pages#services'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'helpful_knowledge/artwork' => 'pages#hk_artwork_requirements'
  get 'helpful_knowledge/conversion' => 'pages#hk_conversion_tables'
  get 'helpful_knowledge/size' => 'pages#hk_size_references'
  get 'helpful_knowledge/design_type' => 'pages#hk_design_with_type'
  get 'helpful_knowledge/colour' => 'pages#hk_artwork_requirements'
  get 'helpful_knowledge/videos' => 'pages#hk_educational_videos'

  get 'admin' => 'pages#admin'

  post 'sort_pictures' => 'picture#sort' 
  post 'sort_projects' => 'projects#sort' 
  post 'sort_sub_categories' => 'sub_categories#sort' 
  post 'toggle_recent' => 'projects#toggle_recent' 
  # get 'admin_index' => 'sub_categories#admin_index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
