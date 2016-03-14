class TestadminController < ApplicationController

  before_action :authenticate_user!
  def index
    @titre = "essai"
  end
end