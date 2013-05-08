Lojagrafica::Application.routes.draw do
  
  Spree::Core::Engine.routes.prepend do
    namespace :admin do
      resources :counter_withdrawals
    end

    resources :counter_withdrawals, :only=> [:index]
  end  
  
  mount Spree::Core::Engine, :at => '/'
  
  namespace :spree do
    resources :variants, :only=> [:index]
  end

end
