Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'heads#index'

  resources :heads
  get 'h/:id' => 'heads#show'
  get 'samples/:sample_id' => 'heads#show'
  get 'head_image/:id' => 'heads#head_image'
end
