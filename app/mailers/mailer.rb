class Mailer < ActionMailer::Base
  default from: 'contact@siteweb.fr'
  layout 'mailer'

  def contact_form(contact)
    @contact = contact
    @to = "jd.levarato@gmail.com"

    mail(to: @to, subject: "Nouveau contact depuis le site") do |format|
      format.html
    end
  end

end