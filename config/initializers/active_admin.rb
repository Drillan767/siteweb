ActiveAdmin.setup do |config|
  # == Site Title

  config.site_title = "Joseph Levarato | Admin"

  config.before_filter :set_admin_locale

  # == User Authentication

  config.authentication_method = :authenticate_admin_user!

  # == User Authorization

  # == Current User

  config.current_user_method = :current_admin_user

  # == Logging Out

  config.logout_link_path = :destroy_admin_user_session_path

  # == Admin Comments

  config.comments = false

  config.comments_menu = false

  # == Batch Actions

  config.batch_actions = true

  config.localize_format = :long
  
end
