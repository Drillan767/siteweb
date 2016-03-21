class PagesController < ApplicationController

  def accueil
    @titre = "Accueil"
  end

  def contact
    @titre = "Contact"
  end

  def about
    @titre = "À propos"
  end

  def todo
    @titre = "TODO"
  end
end
