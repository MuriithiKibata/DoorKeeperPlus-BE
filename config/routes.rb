Rails.application.routes.draw do
  resources :students do
    collection do
      post 'login', to: 'student_sessions#create'
    end
  end
  resources :answers
  resources :choices
  resources :questions
  resources :tests
  resources :enrollments
  resources :lecturer_details
  resources :lecturers do
    collection do
      post 'login', to: "lecturer_sessions#create"
    end
  end
  resources :sessions
  resources :units
  resources :courses
  resources :schools
  resources :organisations do
   collection do
    post 'login', to: "organisation_sessions#create"
    end
   end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  # root "posts#index"
end
