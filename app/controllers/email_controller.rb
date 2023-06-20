class EmailController < ApplicationController
  def welcome
    email = params[:email]
    name = params[:name]
    stack = params[:stack]
    experience = params[:experience]

    template_data = {
      'backend' => {
        'junior' => { task_link: 'bcknd-jnr' },
        'midlevel' => { task_link: 'bcknd-mid' },
        'senior' => { task_link: 'bcknd-snr' }
      },
      'frontend' => {
        'junior' => { task_link: 'frntnd-jnr' },
        'midlevel' => { task_link: 'frntnd-mid' },
        'senior' => { task_link: 'frntnd-snr' }
      }
      # TODO: Add frontend cases
      # TODO: Add mobile cases
      # TODO: Add UI/UX cases
      # TODO: Add devops cases
      # TODO: Add ML cases
    }

    data = template_data[stack][experience]

    if data
      WelcomeMailer.with(name:, task_link: data[:task_link], email:).welcome_email.deliver_now!
      render json: { message: "Email sent successfully to #{email}" }, status: :ok
    else
      render json: { error: 'Invalid stack or experience' }, status: :unprocessable_entity
    end
  end
end
