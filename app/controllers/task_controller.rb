class TaskController < ApplicationController
  def send_task_email
    user = User.create!(
      email: params[:email],
      github: params[:github],
      twitter: params[:twitter],
      phone: params[:phone],
      name: params[:name],
      years_of_experience: params[:years_of_experience]
    )

    render json: { "message": "Email successfully sent to #{user.email}" }, status: :ok
  end
end
