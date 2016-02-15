# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

#CSS
Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( bootstrap-responsive.css )
Rails.application.config.assets.precompile += %w( custom.css )
Rails.application.config.assets.precompile += %w( cv.css )
Rails.application.config.assets.precompile += %w( general/stylesheets/general_foundicons.css )
Rails.application.config.assets.precompile += %w( social/stylesheets/social_foundicons.css )

#JS
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( bootstrap.js )
Rails.application.config.assets.precompile += %w( default.js )
Rails.application.config.assets.precompile += %w( jquery-easing.js )
Rails.application.config.assets.precompile += %w( camera/scripts/camera.min.js )
Rails.application.config.assets.precompile += %w( camera/scripts/jquery.mobile.customized.min.js )
Rails.application.config.assets.precompile += %w( jquery.easing.js )
