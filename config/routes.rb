Rails.application.routes.draw do
  resources :question_responses
  resources :answer_options
  resources :questions
  resources :quizzes
  post '/signup', to: 'users#signup'
  post '/login', to: 'users#login'
end
