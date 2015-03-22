require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Qichebaoyang
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    #email configuration
    config.action_mailer.raise_delivery_errors = true #改为true，并添加如下内容
    config.action_mailer.default_url_options = { :host => "localhost:3000" }
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
        :address => "smtp.aliyun.com",
        :port => 25,
        :domain => "aliyun.com",
        :authentication => :login,
        :user_name => "qichebaoyang@aliyun.com", #
        :password => "qichebaoyang@aliyun" #
    }

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :'zh-CN'
  end
end
