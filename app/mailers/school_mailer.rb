class SchoolMailer < ApplicationMailer
  default from: 'Ayebea from SlightlyTechie School'

  def onboarding_email
    @name = params[:full_name]

    mail(
      to: params[:email_address],
      reply_to: 'slightly.techie@gmail.com',
      subject: "Invitation to SlightlyTechie School's Orientation",
      bcc: 'korantengsarah33@gmail.com'
    )
  end
end
