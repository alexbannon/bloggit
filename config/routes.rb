Rails.application.routes.draw do
  get "" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  get "posts/:id" => "posts#show"
  put "posts/:id" => "posts#update"
  delete "posts/:id/delete" => "posts#destroy"
  post "posts/:id/comments" => "comments#create"
  delete "posts/:post_id/comments/:comment_id" => "comments#destroy"
end
