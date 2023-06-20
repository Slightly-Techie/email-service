# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  user_name: ENV['ST_SENDGRID_USERNAME'],
  password: ENV['ST_SENDGRID_PASSWORD'],
  domain: ENV['ST_SENDGRID_DOMAIN'],
  address: ENV['ST_SENDGRID_ADDRESS'],
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
