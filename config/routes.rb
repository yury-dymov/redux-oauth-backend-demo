Rails.application.routes.draw do
  get 'test/test'

  mount_devise_token_auth_for 'User', at: 'auth'
end
