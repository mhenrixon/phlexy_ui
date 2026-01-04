# frozen_string_literal: true

module BetterRailsSystemTests
  # Use our `Capybara.save_path` to store screenshots with other capybara artifacts
  # (Rails screenshots path is not configurable https://github.com/rails/rails/blob/49baf092439fc74fc3377b12e3334c3dd9d0752f/actionpack/lib/action_dispatch/system_testing/test_helpers/screenshot_helper.rb#L79)
  def absolute_image_path
    Rails.root.join("#{Capybara.save_path}/screenshots/#{image_name}.png")
  end

  def wait_for_turbo(timeout = nil)
    return unless has_css?(".turbo-progress-bar", visible: :visible, wait: 0.25.seconds)

    has_no_css?(".turbo-progress-bar", wait: timeout.presence || 5.seconds)
  end

  # Use relative path in screenshot message to make it clickable in VS Code
  def image_path
    absolute_image_path.relative_path_from(Rails.root).to_s
  end

  # Convert dom_id to selector
  def dom_id(*args)
    "##{super}"
  end

  # Helper to wait for DaisyUI component animations to complete
  def wait_for_animation(duration = 0.3)
    sleep duration
  end

  # Helper to interact with DaisyUI collapse components
  def toggle_collapse(collapse_selector)
    find(collapse_selector).click
    wait_for_animation
  end

  # Helper to interact with DaisyUI dropdown components
  def open_dropdown(dropdown_selector)
    find(dropdown_selector).click
    wait_for_animation
  end

  # Helper to interact with DaisyUI modal components
  def open_modal(trigger_selector)
    find(trigger_selector).click
    wait_for_animation
  end

  def close_modal
    find(".modal-backdrop, .modal-box button.btn-close", match: :first).click
    wait_for_animation
  end

  # Helper to switch themes
  def switch_theme(theme_name)
    execute_script("document.documentElement.dataset.theme = '#{theme_name}'")
  end

  # Helper for tab navigation
  def click_tab(tab_text)
    find(".tab", text: tab_text).click
    wait_for_animation
  end

  # Helper to check if a component is visible and properly rendered
  def expect_component(selector, **)
    expect(page).to have_css(selector, **)
  end
end

RSpec.configure do |config|
  # Add #dom_id support
  config.include ActionView::RecordIdentifier, type: :system
  config.include BetterRailsSystemTests, type: :system
end
