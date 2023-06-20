Rails.application.routes.draw do
  root to: 'application#healthcheck'

  post '/welcome-email', to: 'email#welcome'
end
