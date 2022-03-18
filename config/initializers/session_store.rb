if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: '_qro_api_session', domain: "https://qro-api.herokuapp.com/api/v1/sessions"
else
  Rails.application.config.session_store :cookie_store, key: '_qro_api_session'
end