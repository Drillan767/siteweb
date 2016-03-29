class PagesController < ApplicationController

  def accueil
    @titre = "Accueil"
  end

  def about
    @titre = "À propos"
  end

  def todo
    @titre = "TODO"
  end
end
