require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Siteweb
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    # I recommend using this line to show error
    config.action_mailer.raise_delivery_errors = true
    config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
    config.entities_greek = false
    config.entities_latin = false
    config.entities_processNumerical = false
  end
end
