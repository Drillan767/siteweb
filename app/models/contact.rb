class Contact

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend  ActiveModel::Naming

  attr_accessor :nom, :email, :objet, :message

  validates :nom, :email, :objet, :message, presence: true
  validates :email, :format => { :with => %r{.+@.+\..+} }


  def persisted?
    false
  end

  def initialize(attributes = {})
    attributes.each do |nom, value|
      send("#{nom}=", value)
    end
  end

end
