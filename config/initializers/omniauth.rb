if Rails.env.production?
  DEFAULT_PROVIDER = 'twitter'
else
  DEFAULT_PROVIDER = 'developer'
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end
