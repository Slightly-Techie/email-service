class UserTasksMailer < ApplicationMailer
  default from: 'Essilfie from Slightly Techie'

  def junior_task_email(user)
    @user = user
    @challenge_link = 'https://drive.google.com/drive/folders/1SccB7-_qtM89Xk-HJhmyONNFdls-I7HV'
    mail(to: user.email, subject: 'Welcome to the Slightly Techie Network!!')
  end

  def mid_level_task_email(user)
    @user = user
    @challenge_link = 'https://drive.google.com/drive/folders/1PzhFh8elevCzU1yJnv5nJER9UGq1cqAY'
    mail(to: user.email, subject: 'Welcome to the Slightly Techie Network!!')
  end

  def senior_task_email(user)
    @user = user
    @challenge_link = 'https://drive.google.com/drive/folders/1_AcSGfi8gTg8qAoBSR5GSjy3uAOZ72Kv'
    mail(to: user.email, subject: 'Welcome to the Slightly Techie Network!!')
  end
end
