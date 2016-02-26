class MessageMailer < ActionMailer::Base

  default :to => "jd.levarato@gmail.com"
  def message_me(msg)
    @msg = msg

    mail from: @msg.email, subject: @msg.subject, body: @msg.content
  end
end