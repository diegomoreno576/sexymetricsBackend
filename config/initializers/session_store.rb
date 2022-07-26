if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "sexymetrics.vercel.app"
else
    Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end