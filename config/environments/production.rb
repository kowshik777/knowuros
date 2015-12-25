Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_files = ENV['RAILS_SERVE_STATIC_FILES'].present?
  config.assets.js_compressor = :uglifier
  config.assets.compile = false
  config.assets.digest = true
  config.log_level = :debug
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  config.serve_static_assets = true
  config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
  config.assets.compile = false
  config.active_record.dump_schema_after_migration = false
  config.action_mailer.default_url_options = { :host => 'chaitu2.herokuapp.com' }
  config.action_mailer.default_charset = “utf-8”
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
  :address              => "mail.gmx.com",
  :port                 => 25,
  :user_name            => 'knowuros@gmx.com',
  :password             => 'Hello@5friends',
  :authentication       => 'login',
  :enable_starttls_auto => true  }
end
