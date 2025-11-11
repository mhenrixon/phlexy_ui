require "phlex"
require "zeitwerk"
require_relative "phlexy_ui/version"
require_relative "phlexy_ui/updated_at"

module PhlexyUI
  LOADER = Zeitwerk::Loader.for_gem
  LOADER.inflector.inflect("phlexy_ui" => "PhlexyUI")
  LOADER.ignore("#{__dir__}/phlexy_ui/updated_at.rb")
  LOADER.setup
  LOADER.load_file("#{__dir__}/phlexy_ui/base.rb")

  extend Configurable
  extend Phlex::Kit

  class << self
    # Get the global modifier registry
    #
    # @return [ModifierRegistry] the registry instance
    def registry
      @registry ||= ModifierRegistry.new
    end

    # Register a component with its modifiers
    #
    # @param component_name [Symbol] the component identifier (e.g., :button)
    # @param base_class [String] the base CSS class (e.g., "btn")
    # @param modifiers [Hash] mapping of modifier symbols to CSS classes
    # @return [void]
    #
    # @example
    #   PhlexyUI.register_component(
    #     :button,
    #     base_class: "btn",
    #     modifiers: { primary: "btn-primary" }
    #   )
    def register_component(component_name, base_class:, modifiers:)
      registry.register(component_name, base_class: base_class, modifiers: modifiers)
    end

    # Get modifiers for a component
    #
    # @param component_name [Symbol] the component identifier
    # @return [Hash] the modifiers hash
    def modifiers_for(component_name)
      registry.modifiers_for(component_name)
    end

    # Get base class for a component
    #
    # @param component_name [Symbol] the component identifier
    # @return [String, nil] the base CSS class
    def base_class_for(component_name)
      registry.base_class_for(component_name)
    end

    # Check if a component is registered
    #
    # @param component_name [Symbol] the component identifier
    # @return [Boolean] true if registered
    def registered?(component_name)
      registry.registered?(component_name)
    end

    # Eager load all components to register them
    # Call this in Rails initializer or before using the registry
    #
    # @return [void]
    #
    # @example In a Rails initializer
    #   PhlexyUI.eager_load!
    def eager_load!
      return if @eager_loaded

      LOADER.eager_load
      @eager_loaded = true
    end
  end
end
