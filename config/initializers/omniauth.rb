require 'openid/store/filesystem'
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'APP_ID', 'APP_Secret'
end

