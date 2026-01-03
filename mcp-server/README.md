# DaisyUI Phlex MCP Server

MCP (Model Context Protocol) server providing snippets and documentation for DaisyUI Ruby/Phlex components.

## Installation

```bash
cd mcp-server
npm install
npm run build
```

## Usage with Claude Code

Add to your Claude Code MCP settings (`~/.claude/claude_desktop_config.json`):

```json
{
  "mcpServers": {
    "daisyui-phlex": {
      "command": "node",
      "args": ["/path/to/daisyui/mcp-server/dist/index.js"]
    }
  }
}
```

## Available Tools

### get_component

Get usage documentation and example code for a specific component.

```
get_component({ component: "button" })
```

### list_components

List all available DaisyUI Ruby/Phlex components.

```
list_components({})
```

### search_components

Search for components by modifier or functionality.

```
search_components({ query: "form" })
```

### get_modifiers

Get all available modifiers for a component, organized by category.

```
get_modifiers({ component: "button" })
```

## Example Output

```ruby
# Button Component

Button component for actions and links

## Modifiers
primary, secondary, accent, info, success, warning, error, neutral,
ghost, link, outline, dash, soft, lg, md, sm, xs, wide, block, circle, square

## Example Usage
Button(:primary) { "Click me" }
Button(:secondary, as: :a, href: "/path") { "Link" }
Button(:outline, :sm) do
  svg_icon
  plain "Save"
end
```

## Development

```bash
npm run dev    # Watch mode
npm run build  # Build
npm start      # Run server
```
