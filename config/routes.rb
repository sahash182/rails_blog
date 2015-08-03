Rails.application.routes.draw do

  get 'home/index'

  # get 'posts/index'

root to: "home#index"
resources :home 

resources :posts

end

#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         posts#index
#     posts GET    /posts(.:format)          posts#index
#           POST   /posts(.:format)          posts#create
#  new_post GET    /posts/new(.:format)      posts#new
# edit_post GET    /posts/:id/edit(.:format) posts#edit
#      post GET    /posts/:id(.:format)      posts#show
#           PATCH  /posts/:id(.:format)      posts#update
#           PUT    /posts/:id(.:format)      posts#update
#           DELETE /posts/:id(.:format)      posts#destroy
