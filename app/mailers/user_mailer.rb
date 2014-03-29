class UserMailer < ActionMailer::Base
  default from: "ariekdev@gmail.com"
  default to: "smtp://127.0.0.1:1025 "

  def welcome
    mail(subject: 'Welcome to My Awesome Site')
  end


end
