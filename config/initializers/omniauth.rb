Rails.application.config.middleware.use ActionDispatch::Cookies
Rails.application.config.middleware.use ActionDispatch::Session::CookieStore

Rails.application.config.middleware.use OmniAuth::Builder do
  provider 'github', ENV.fetch('github_key'), ENV.fetch('github_secret')
end