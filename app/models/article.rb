class Article < ActiveRecord::Base
  validates_presence_of :titre, :contenu, presence: true
end
