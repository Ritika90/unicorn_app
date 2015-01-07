class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  def send_message(user, message)
    @user = user
    @message = message
    mail( :to => @user, :subject => 'Message sent to user' )
  end
end
