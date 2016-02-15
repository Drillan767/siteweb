class ContactForm < MailForm::Base
  attribute :name,     :validate => true
  attribute :email,    :validate => /\A([\w\.%\+\-]+)@([\w]{2,})\z/i
  attribute :file,     :attachment => true
  attribute :phone
  attribute :referral
  attribute :message
  attribute :nickname, :captcha => true

  def persisted?
    false
  end

  def headers
    {
        :subject => "New Lead",
        :to => "jd.levarato@gmail.com",
        :from => %("#{name}" <#{email}>)
    }
  end
end