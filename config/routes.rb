Rails.application.routes.draw do
  resources :students, only: [:new, :show, :edit, :create, :update]
  #patch '/students/:id', to: 'students#update'
  resources :school_classes, only: [:new, :show, :edit, :create, :update]
  #patch '/school_classes/:id', to: 'school_classes#update'
end
