require "capybara/rails"
require "capybara/rspec"

require_relative "playwright_setup"

# Configure Capybara for system specs
Capybara.server = :puma, { Silent: true }

# Set default driver
Capybara.register_driver :rack_test do |app|
  Capybara::RackTest::Driver.new(app, headers: { "HTTP_USER_AGENT" => "Capybara" })
end

capybara_host = "127.0.0.1"
capybara_port = 3001 + ENV["TEST_ENV_NUMBER"].to_i

Capybara.app_host     = "http://#{capybara_host}"
Capybara.asset_host   = Capybara.app_host
Capybara.server_host  = capybara_host
Capybara.server_port  = capybara_port
Capybara.default_host = "http://#{capybara_host}"

Capybara.configure do |c|
  c.default_max_wait_time = 5
  c.default_driver        = :daisyui_playwright
  c.javascript_driver     = :daisyui_playwright
  c.save_path             = "tmp/capybara"
  c.always_include_port   = true
end

RSpec.configure do |config|
  config.prepend_before(:each, type: :system) do
    driven_by(:daisyui_playwright, screen_size: [1920, 1080], options: { js_errors: true })
  end

  config.around(:each, type: :system) do |ex|
    was_host = Rails.application.default_url_options[:host]
    was_port = Rails.application.default_url_options[:port]
    Rails.application.default_url_options[:host] = Capybara.server_host
    Rails.application.default_url_options[:port] = Capybara.server_port

    ex.run

    Rails.application.default_url_options[:host] = was_host
    Rails.application.default_url_options[:port] = was_port
  end
end
