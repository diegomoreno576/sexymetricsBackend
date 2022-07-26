Rails.application.config.session_store :cookie_store, key: "_authentication_app"
Rails.application.config.middleware.use ActionDispatch::Cookies
Rails.application.config.middleware.use config.session_store, config.session_options