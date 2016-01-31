class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Merci de votre message, je vous recontacterai bientôt !'
    else
      flash.now[:error] = 'Impossible d\'envoyer le message, vérifiez les paramètres'
      render :new
    end
  end
end