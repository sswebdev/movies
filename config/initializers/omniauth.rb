Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
  provider :twitter, ENV["AAAA_TWITTER_KEY"], '83t2pMlIvrlw8zPxqFv169ghDgY9kGXWAa4f3USw'
end
