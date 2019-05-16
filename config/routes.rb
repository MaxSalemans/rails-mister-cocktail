Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create], shallow: true do
    resources :doses, only: [:new, :create, :destroy]
  end
end
