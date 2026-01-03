require "capybara-playwright-driver"

Capybara.register_driver(:daisyui_playwright) do |app|
  headl_env    = ENV.fetch("HEADLESS", "true")
  headless     = %w[1 true on].include?(headl_env)
  browser_type = ENV.fetch("BROWSER", :chromium).to_sym
  slowmo       = ENV.fetch("SLOWMO", "0").to_i
  args         = %w[
    --disable-background-timer-throttling
    --disable-backgrounding-occluded-windows
    --disable-breakpad
    --disable-component-extensions-with-background-pages
    --disable-dev-shm-usage
    --disable-extensions
    --disable-features=TranslateUI,BlinkGenPropertyTrees
    --disable-gpu
    --disable-infobars
    --disable-ipc-flooding-protection
    --disable-popup-blocking
    --disable-renderer-backgrounding
    --disable-search-engine-choice-screen
    --disable-site-isolation-trials
    --disable-web-security
    --enable-features=NetworkService,NetworkServiceInProcess
    --force-color-profile=srgb
    --force-device-scale-factor=1
    --hide-scrollbars
    --incognito
    --use-gl=egl
    --use-angle=gl
    --metrics-recording-only
    --mute-audio
    --no-sandbox
  ]

  # Set Playwright browsers path explicitly for CI
  ENV["PLAYWRIGHT_BROWSERS_PATH"] ||= "/home/runner/.cache/ms-playwright" if ENV["GITHUB_ACTION"] == "true"

  driver_opts = {
    playwright_cli_executable_path: "./node_modules/.bin/playwright",
    browser_type:,
    headless:,
    slowMo: slowmo,
    args:,
    viewport: { width: 1920, height: 1080 },
    permissions: %w[clipboard-read clipboard-write]
  }.freeze

  Capybara::Playwright::Driver.new(app, **driver_opts)
end
