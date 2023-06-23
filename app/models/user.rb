class User < ApplicationRecord
  after_create :send_task_email

  def send_task_email
    if years_of_experience.between?(0, 2)
      UserTasksMailer.junior_task_email(self).deliver_now
    elsif years_of_experience.between?(3, 5)
      UserTasksMailer.mid_level_task_email(self).deliver_now
    else
      UserTasksMailer.senior_task_email(self).deliver_now
    end
  end
end
