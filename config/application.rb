require_relative 'boot'

require 'rails/all'

require 'aws-sdk'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Presentationproc
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    Aws.config.update({
  region: 'us-west-2',
  credentials: Aws::Credentials.new('AKIAINU24VUBDCVUFUYA', 'xRzA+NzzSniwR38Mli2Y3cYdNpSyE2Uo1Co11Lac')
})
  end
end
