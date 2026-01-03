import "@hotwired/turbo-rails"
import "controllers"

// Register custom Turbo Stream action: set_dataset_attribute
// Using Turbo 8 StreamActions API
Turbo.StreamActions.set_dataset_attribute = function() {
  const attribute = this.getAttribute("attribute")
  const value = this.getAttribute("value")
  const targets = this.getAttribute("targets")

  if (!attribute || !targets) {
    console.error("Missing required attributes for set_dataset_attribute action")
    return
  }

  // Find target elements
  const targetElements = targets === "html"
    ? [document.documentElement]
    : document.querySelectorAll(targets)

  // Set dataset attribute on all targets
  targetElements.forEach((element) => {
    element.dataset[attribute] = value
  })
}
