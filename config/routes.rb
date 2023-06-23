Rails.application.routes.draw do
  root to: 'application#healthcheck'
  post '/task-email', to: 'task#send_task_email'
end
