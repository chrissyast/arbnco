require_relative "boot"

require "rails/all"
require 'active_job'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

ENV.update YAML.load_file('config/application.yml')[Rails.env] rescue {}

module Arbnco
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    config.active_job.queue_adapter = :sidekiq

    config.action_mailer.delivery_method :smtp
    ActionMailer::Base.smtp_settings = {
      :user_name => 'apikey',
      :password => ENV['SENDGRID_API_KEY'],
      :address => 'smtp.sendgrid.net',
      :domain => ENV['SENDGRID_DOMAIN'],
      :port => 587,
      :authentication => 'plain',
      :enable_starttls_auto => true
    }

    Rails.application.routes.default_url_options = { host: ENV['RAILS_SERVER'] }


    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
