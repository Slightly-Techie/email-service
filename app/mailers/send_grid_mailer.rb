require 'sendgrid-ruby'

class SendGridMailer
  include SendGrid
  def initialize
    @mail = SendGrid::Mail.new
    @personalization = SendGrid::Personalization.new
    from 'slightly.techie@gmail.com'
  end

  def from(email)
    @mail.from = SendGrid::Email.new(email:, name: 'Ayebea from Slightly Techie')
    self
  end

  def subject(subject)
    @mail.subject = subject
    @personalization.subject = subject
    self
  end

  def to(email)
    @personalization.add_to SendGrid::Email.new(email:)
    self
  end

  def add_template(template_id:, data:)
    @mail.template_id = template_id
    @personalization.add_dynamic_template_data(data)
    self
  end

  def send
    @mail.add_personalization @personalization
    sg = SendGrid::API.new(api_key: ENV['ST_SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: @mail.to_json)
    puts response.body
  end
end
