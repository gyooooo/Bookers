Rails.application.routes.draw do
  root to: 'homes#top'
  resources :books, :show, :edit, :destroy
end