Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'heads#index'

  get 'og' => 'head_images#og_images'

  resources :heads

  resources :demos

  get '/:id' => 'heads#show'
  get 'samples/:sample_id' => 'heads#show'

  get 'head_og_image/:id' => 'head_images#head_og_image', as: :head_og_image
  get 'head_image/:id' => 'head_images#head_image', as: :head_image
  get 'head_background_image/:id' => 'head_images#head_background_image', as: :head_background_image

  put 'head_og_image/:id' => 'head_images#update', as: :update_head_og_image
end
