# if Rails.env == "production"
#     Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "https://notecopies.herokuapp.com/"
# else
#     Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "https://notecopies.herokuapp.com/"
# end

Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: :all