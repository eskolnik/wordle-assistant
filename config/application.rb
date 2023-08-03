require_relative "boot"

# require "rails/all"
# require "rails"

# active_record is what we're not going to use it, so add it comment in case 
# at some point you enable it back again
# require "active_record/railtie" 

# This is not loaded in rails/all but inside active_record so add it if
# you want your models work as expected
require "active_model/railtie" 
# And now the rest
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "active_job/railtie" # Only for Rails >= 4.2
require "action_cable/engine" # Only for Rails >= 5.0
# require "sprockets/railtie" # Deprecated for Rails >= 7, so add it only if you're using it
require "rails/test_unit/railtie"

# All these depend on active_record, so they should be excluded also
# require "action_text/engine" # Only for Rails >= 6.0
# require "action_mailbox/engine" # Only for Rails >= 6.0
# require "active_storage/engine" # Only for Rails >= 5.2


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WordleHistory
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
  end
end
