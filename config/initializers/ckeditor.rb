# Use this hook to configure ckeditor
Ckeditor.setup do |config|

  require "ckeditor/orm/active_record"
  config.cdn_url = "//cdn.ckeditor.com/4.1.6/standard/ckeditor.js"
  config.entities = false
  config.entities_greek = false
  config.entities_latin = false
  config.entities_processNumerical = false

end
