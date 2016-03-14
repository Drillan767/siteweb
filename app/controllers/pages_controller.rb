class PagesController < ApplicationController

  def accueil
    @titre = "Accueil"
    if current_user
      redirect_to testadmin_path
    end
  end

  def about
    @titre = "À propos"
  end

  def todo
    @titre = "TODO"
  end
end
