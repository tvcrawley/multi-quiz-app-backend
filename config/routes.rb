Rails.application.routes.draw do
  # resources :question_responses
  # resources :answer_options
  # resources :questions
  resources :quizzes

  post '/signup', to: 'users#signup'
  post '/login', to: 'users#login'

  get '/quizzes/:id/questions', to: 'questions#index'
  get '/questions/:id/answer_options', to: 'answer_options#index'
  post '/question_responses', to: 'question_responses#create'
end
