Rails.application.routes.draw do
  devise_for :users
  resources :pins do
    resources :comments
    member do
      # Adds two routes, one for upvoting and another for downvoting that will update current like and dislikes size in votes table.
      # like_pin     PUT    /pins/:id/like(.:format)       pins#upvote
      # dislike_pin  PUT    /pins/:id/dislike(.:format)    pins#downvote
      put "like", to: "pins#upvote"
      put "dislike", to: "pins#downvote"
    end
  end
  root 'pins#index'
end
