Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles, except: [:destroy] #only: [:index, :show, :new, :create, :edit, :update] - either one works, only: or except:

end
