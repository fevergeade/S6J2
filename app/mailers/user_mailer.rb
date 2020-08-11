class UserMailer < ApplicationMailer
  default from: 'fevergeade@gmail.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: "Bienvenue #{@user.last_name} #{@user.first_name}")
  end

  def participation_email(attendance)
    @admin = User.find(attendance.event.admin_id)
    @event = Event.find(attendance.event.id)
    @participant = User.find(attendance.user.id)
    mail(to: @admin.email, subject: "[#{@event.title}]Nouveau participant")    
  end

end
