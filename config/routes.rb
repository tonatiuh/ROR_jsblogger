Jsblogger::Application.routes.draw do
  get "tags/index"

  get "tags/show"

  resources :articles
  resources :comments
  resources :tags
end
