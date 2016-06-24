# == Route Map
#
#                    Prefix Verb   URI Pattern                                       Controller#Action
#          new_user_session GET    /users/sign_in(.:format)                          devise/sessions#new
#              user_session POST   /users/sign_in(.:format)                          devise/sessions#create
#      destroy_user_session DELETE /users/sign_out(.:format)                         devise/sessions#destroy
#             user_password POST   /users/password(.:format)                         devise/passwords#create
#         new_user_password GET    /users/password/new(.:format)                     devise/passwords#new
#        edit_user_password GET    /users/password/edit(.:format)                    devise/passwords#edit
#                           PATCH  /users/password(.:format)                         devise/passwords#update
#                           PUT    /users/password(.:format)                         devise/passwords#update
#  cancel_user_registration GET    /users/cancel(.:format)                           devise/registrations#cancel
#         user_registration POST   /users(.:format)                                  devise/registrations#create
#     new_user_registration GET    /users/sign_up(.:format)                          devise/registrations#new
#    edit_user_registration GET    /users/edit(.:format)                             devise/registrations#edit
#                           PATCH  /users(.:format)                                  devise/registrations#update
#                           PUT    /users(.:format)                                  devise/registrations#update
#                           DELETE /users(.:format)                                  devise/registrations#destroy
#         new_model_session GET    /models/sign_in(.:format)                         devise/sessions#new
#             model_session POST   /models/sign_in(.:format)                         devise/sessions#create
#     destroy_model_session DELETE /models/sign_out(.:format)                        devise/sessions#destroy
#            model_password POST   /models/password(.:format)                        devise/passwords#create
#        new_model_password GET    /models/password/new(.:format)                    devise/passwords#new
#       edit_model_password GET    /models/password/edit(.:format)                   devise/passwords#edit
#                           PATCH  /models/password(.:format)                        devise/passwords#update
#                           PUT    /models/password(.:format)                        devise/passwords#update
# cancel_model_registration GET    /models/cancel(.:format)                          devise/registrations#cancel
#        model_registration POST   /models(.:format)                                 devise/registrations#create
#    new_model_registration GET    /models/sign_up(.:format)                         devise/registrations#new
#   edit_model_registration GET    /models/edit(.:format)                            devise/registrations#edit
#                           PATCH  /models(.:format)                                 devise/registrations#update
#                           PUT    /models(.:format)                                 devise/registrations#update
#                           DELETE /models(.:format)                                 devise/registrations#destroy
#             welcome_index GET    /welcome/index(.:format)                          welcome#index
#          article_comments GET    /articles/:article_id/comments(.:format)          comments#index
#                           POST   /articles/:article_id/comments(.:format)          comments#create
#       new_article_comment GET    /articles/:article_id/comments/new(.:format)      comments#new
#      edit_article_comment GET    /articles/:article_id/comments/:id/edit(.:format) comments#edit
#           article_comment GET    /articles/:article_id/comments/:id(.:format)      comments#show
#                           PATCH  /articles/:article_id/comments/:id(.:format)      comments#update
#                           PUT    /articles/:article_id/comments/:id(.:format)      comments#update
#                           DELETE /articles/:article_id/comments/:id(.:format)      comments#destroy
#                  articles GET    /articles(.:format)                               articles#index
#                           POST   /articles(.:format)                               articles#create
#               new_article GET    /articles/new(.:format)                           articles#new
#              edit_article GET    /articles/:id/edit(.:format)                      articles#edit
#                   article GET    /articles/:id(.:format)                           articles#show
#                           PATCH  /articles/:id(.:format)                           articles#update
#                           PUT    /articles/:id(.:format)                           articles#update
#                           DELETE /articles/:id(.:format)                           articles#destroy
#                      root GET    /                                                 welcome#index
#

Rails.application.routes.draw do
  
  devise_for :users, controllers: { sessions: 'users/sessions' }
  get 'welcome/index'
  
  #devise_for :users, controllers: { sessions: 'users/sessions' }
  

  resources :articles do
    resources :comments
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
  #root 'devise/sessions#new'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

