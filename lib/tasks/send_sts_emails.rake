namespace :emails do
  desc 'Send Slightly Techie School emails'
  task send_sts_emails: :environment do
    require 'csv'

    csv_path = Rails.root.join('db', 'seeds', 'sts_students.csv')
    counter = 0

    CSV.foreach(csv_path, headers: true) do |row|
      name = row['Full name']
      email = row['Email Address']

      SchoolMailer.with(full_name: name, email_address: email).onboarding_email.deliver_now

      puts "Sent email to #{name} at #{email}"
      counter += 1
    end

    puts "Total emails sent: #{counter}"
  end
end
