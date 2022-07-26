# if Rails.env == "production"
#     Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "https://notecopies.herokuapp.com/"
# else
#     Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "https://notecopies.herokuapp.com/"
# end

Rails.application.config.middleware.use ActionDispatch::Cookies
Rails.application.config.middleware.use ActionDispatch::Session::CookieStore, key: '_your_app'
Rails.application.config.middleware.insert_after(ActionDispatch::Cookies, ActionDispatch::Session::CookieStore, key: '_your_app')