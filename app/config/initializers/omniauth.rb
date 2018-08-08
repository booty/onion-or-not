# frozen_string_literal: true

Rails.application.config.middleware.use OmniAuth::Builder do
  client_id = Rails.application.credentials.google.dig(:client_id)
  client_secret = Rails.application.credentials.google.dig(:client_secret)
  provider :google_oauth2, client_id, client_secret
end
