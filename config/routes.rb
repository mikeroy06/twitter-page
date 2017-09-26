Rails.application.routes.draw do
  root 'epicenter#feed'

  get 'show_user' => 'epicenter#show_user'

  get 'now_following' => 'epicenter#now_following'

  get 'unfollow' => 'epicenter#unfollow'

  post 'epi_tweet' => 'epicenter#epi_tweet'

  get 'tag_tweets' => 'epicenter#tag_tweets'

  

  resources :tweets
  devise_for :users
end
