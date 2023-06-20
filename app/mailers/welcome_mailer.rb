class WelcomeMailer < ApplicationMailer
  default from: 'Ayebea from SlightlyTechie'
  def welcome_email
    @name = params[:name]
    @challenge_link = params[:task_link]

    mail(
      to: params[:email],
      reply_to: 'slightly.techie@gmail.com',
      subject: 'Welcome to the Slightly Techie Network!!'
    )
  end
end
