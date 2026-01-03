#!/usr/bin/env node

import { Server } from "@modelcontextprotocol/sdk/server/index.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";
import {
  CallToolRequestSchema,
  ListToolsRequestSchema,
} from "@modelcontextprotocol/sdk/types.js";
import * as fs from "fs";
import * as path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Component snippets with Ruby/Phlex examples
const COMPONENT_SNIPPETS: Record<
  string,
  { description: string; modifiers: string[]; example: string; parts?: string[] }
> = {
  button: {
    description: "Button component for actions and links",
    modifiers: [
      "primary",
      "secondary",
      "accent",
      "info",
      "success",
      "warning",
      "error",
      "neutral",
      "ghost",
      "link",
      "outline",
      "dash",
      "soft",
      "active",
      "disabled",
      "lg",
      "md",
      "sm",
      "xs",
      "xl",
      "wide",
      "block",
      "circle",
      "square",
      "glass",
      "no_animation",
    ],
    example: `# Basic button
Button(:primary) { "Click me" }

# Button as link
Button(:secondary, as: :a, href: "/path") { "Link" }

# Button with icon
Button(:outline, :sm) do
  svg_icon
  plain "Save"
end

# Button that opens modal
Button(:primary, modal: "my_modal") { "Open Modal" }`,
  },
  card: {
    description: "Card component for content containers",
    modifiers: [
      "border",
      "dash",
      "side",
      "image_full",
      "xs",
      "sm",
      "md",
      "lg",
      "xl",
      "primary",
      "secondary",
      "accent",
      "neutral",
    ],
    parts: ["body", "title", "actions"],
    example: `# Basic card
Card(:border) do |card|
  card.body do
    card.title { "Card Title" }
    p { "Card content goes here" }
    card.actions do
      Button(:primary) { "Action" }
    end
  end
end

# Card with image
Card do |card|
  figure do
    img(src: "image.jpg", alt: "Image")
  end
  card.body do
    card.title { "Title" }
  end
end`,
  },
  modal: {
    description: "Modal dialog component",
    modifiers: ["open", "top", "bottom", "middle"],
    parts: ["box", "action", "backdrop"],
    example: `# Modal with button trigger
Button(:primary, modal: "my_modal") { "Open" }

Modal(id: "my_modal") do |modal|
  modal.box do
    h3 { "Modal Title" }
    p { "Modal content" }
    modal.action do
      form(method: "dialog") do
        Button { "Close" }
      end
    end
  end
  modal.backdrop
end`,
  },
  alert: {
    description: "Alert component for notifications",
    modifiers: [
      "info",
      "success",
      "warning",
      "error",
      "outline",
      "dash",
      "soft",
    ],
    example: `# Success alert
Alert(:success) { "Operation completed!" }

# Alert with icon
Alert(:warning) do
  svg_warning_icon
  span { "Warning message" }
end`,
  },
  badge: {
    description: "Badge component for labels and tags",
    modifiers: [
      "primary",
      "secondary",
      "accent",
      "ghost",
      "info",
      "success",
      "warning",
      "error",
      "neutral",
      "outline",
      "dash",
      "soft",
      "lg",
      "md",
      "sm",
      "xs",
    ],
    example: `# Basic badge
Badge(:primary) { "NEW" }

# Badge in text
p do
  plain "Status: "
  Badge(:success, :sm) { "Active" }
end`,
  },
  dropdown: {
    description: "Dropdown menu component",
    modifiers: [
      "end",
      "top",
      "bottom",
      "left",
      "right",
      "hover",
      "open",
    ],
    parts: ["trigger", "content"],
    example: `# Dropdown menu
Dropdown(:end) do |dropdown|
  dropdown.trigger do
    Button { "Options" }
  end
  dropdown.content do
    Menu do |menu|
      menu.item { a(href: "#") { "Item 1" } }
      menu.item { a(href: "#") { "Item 2" } }
    end
  end
end`,
  },
  menu: {
    description: "Menu component for navigation",
    modifiers: ["horizontal", "vertical", "lg", "md", "sm", "xs"],
    parts: ["item", "title", "submenu"],
    example: `# Vertical menu
Menu do |menu|
  menu.item { a(href: "/") { "Home" } }
  menu.item { a(href: "/about") { "About" } }
  menu.item do |item|
    item.submenu(:collapsible) do |submenu|
      submenu.title { "More" }
      submenu.item { a(href: "#") { "Sub Item" } }
    end
  end
end`,
  },
  navbar: {
    description: "Navbar component for page headers",
    modifiers: ["primary", "secondary", "accent", "neutral"],
    parts: ["start", "center", "end"],
    example: `# Basic navbar
Navbar do |navbar|
  navbar.start do
    a(class: "text-xl") { "Logo" }
  end
  navbar.center do
    Menu(:horizontal) do |menu|
      menu.item { a(href: "/") { "Home" } }
    end
  end
  navbar.end do
    Button(:ghost) { "Login" }
  end
end`,
  },
  tabs: {
    description: "Tabs component for tabbed content",
    modifiers: ["boxed", "bordered", "lifted", "lg", "md", "sm", "xs"],
    example: `# Basic tabs
Tabs(:boxed) do |tabs|
  tabs.tab(:active) { "Tab 1" }
  tabs.tab { "Tab 2" }
  tabs.tab { "Tab 3" }
end

# Tabs with content (radio-based)
Tabs(:lifted) do |tabs|
  tabs.tab_with_content(name: "tabs", checked: true) do |tab|
    tab.label { "Tab 1" }
    tab.content { p { "Content 1" } }
  end
end`,
  },
  drawer: {
    description: "Drawer/sidebar component",
    modifiers: ["end", "open"],
    parts: ["toggle", "content", "side"],
    example: `# Drawer sidebar
Drawer(id: "my-drawer") do |drawer|
  drawer.toggle
  drawer.content do
    # Main content
    Button(as: :label, for: "my-drawer") { "Open" }
  end
  drawer.side do
    Menu do |menu|
      menu.item { a { "Sidebar Item" } }
    end
  end
end`,
  },
  tooltip: {
    description: "Tooltip component for hover hints",
    modifiers: [
      "top",
      "bottom",
      "left",
      "right",
      "open",
      "primary",
      "secondary",
      "accent",
      "info",
      "success",
      "warning",
      "error",
    ],
    example: `# Basic tooltip
Tooltip(tip: "Helpful text") do
  Button { "Hover me" }
end

# Colored tooltip
Tooltip(:primary, tip: "Primary tooltip") do
  span { "Info" }
end`,
  },
  input: {
    description: "Text input component",
    modifiers: [
      "bordered",
      "ghost",
      "primary",
      "secondary",
      "accent",
      "info",
      "success",
      "warning",
      "error",
      "lg",
      "md",
      "sm",
      "xs",
    ],
    example: `# Basic input
Input(:bordered, placeholder: "Enter text...")

# Input with label
Fieldset do |fieldset|
  fieldset.legend { "Email" }
  Input(:bordered, type: "email", placeholder: "you@example.com")
end`,
  },
  checkbox: {
    description: "Checkbox input component",
    modifiers: [
      "primary",
      "secondary",
      "accent",
      "success",
      "warning",
      "error",
      "lg",
      "md",
      "sm",
      "xs",
    ],
    example: `# Basic checkbox
Checkbox(:primary, checked: true)

# Checkbox with label
label(class: "flex items-center gap-2") do
  Checkbox(:secondary)
  span { "Accept terms" }
end`,
  },
  toggle: {
    description: "Toggle/switch component",
    modifiers: [
      "primary",
      "secondary",
      "accent",
      "success",
      "warning",
      "error",
      "lg",
      "md",
      "sm",
      "xs",
    ],
    example: `# Basic toggle
Toggle(:primary)

# Toggle with label
label(class: "flex items-center gap-2") do
  Toggle(:success, checked: true)
  span { "Enable feature" }
end`,
  },
  select: {
    description: "Select dropdown component",
    modifiers: [
      "bordered",
      "ghost",
      "primary",
      "secondary",
      "accent",
      "info",
      "success",
      "warning",
      "error",
      "lg",
      "md",
      "sm",
      "xs",
    ],
    example: `# Basic select
Select(:bordered) do
  option(disabled: true, selected: true) { "Pick one" }
  option { "Option 1" }
  option { "Option 2" }
end`,
  },
  textarea: {
    description: "Textarea component",
    modifiers: [
      "bordered",
      "ghost",
      "primary",
      "secondary",
      "accent",
      "info",
      "success",
      "warning",
      "error",
      "lg",
      "md",
      "sm",
      "xs",
    ],
    example: `# Basic textarea
Textarea(:bordered, placeholder: "Enter description...")`,
  },
  avatar: {
    description: "Avatar component for user images",
    modifiers: ["online", "offline", "placeholder"],
    example: `# Basic avatar
Avatar do
  img(src: "user.jpg", alt: "User")
end

# Avatar with status
Avatar(:online) do
  img(src: "user.jpg", alt: "User")
end

# Avatar group
AvatarGroup do
  Avatar { img(src: "user1.jpg") }
  Avatar { img(src: "user2.jpg") }
  Avatar(:placeholder) { span { "+5" } }
end`,
  },
  progress: {
    description: "Progress bar component",
    modifiers: [
      "primary",
      "secondary",
      "accent",
      "info",
      "success",
      "warning",
      "error",
    ],
    example: `# Determinate progress
Progress(:primary, value: 70, max: 100)

# Indeterminate progress
Progress(:secondary)`,
  },
  loading: {
    description: "Loading spinner component",
    modifiers: [
      "spinner",
      "dots",
      "ring",
      "ball",
      "bars",
      "infinity",
      "lg",
      "md",
      "sm",
      "xs",
      "primary",
      "secondary",
      "accent",
    ],
    example: `# Spinner loading
Loading(:spinner, :lg)

# Dots loading
Loading(:dots, :primary)`,
  },
  table: {
    description: "Table component",
    modifiers: ["zebra", "pin_rows", "pin_cols", "lg", "md", "sm", "xs"],
    example: `# Basic table
Table(:zebra) do |table|
  table.head do
    tr do
      th { "Name" }
      th { "Email" }
    end
  end
  table.body do
    tr do
      td { "John" }
      td { "john@example.com" }
    end
  end
end`,
  },
  collapse: {
    description: "Collapsible content component",
    modifiers: ["arrow", "plus", "open"],
    parts: ["title", "content"],
    example: `# Collapse with arrow
Collapse(:arrow) do |collapse|
  collapse.title { "Click to expand" }
  collapse.content do
    p { "Hidden content here" }
  end
end`,
  },
  accordion: {
    description: "Accordion component (multiple collapses)",
    modifiers: ["arrow", "plus", "join"],
    example: `# Accordion
div(class: "join join-vertical") do
  Accordion(:arrow, name: "accordion-1") do |acc|
    acc.title { "Section 1" }
    acc.content { p { "Content 1" } }
  end
  Accordion(:arrow, name: "accordion-1") do |acc|
    acc.title { "Section 2" }
    acc.content { p { "Content 2" } }
  end
end`,
  },
  steps: {
    description: "Steps/stepper component",
    modifiers: ["vertical", "horizontal"],
    example: `# Horizontal steps
Steps do |steps|
  steps.step(:primary) { "Register" }
  steps.step(:primary) { "Choose plan" }
  steps.step { "Purchase" }
  steps.step { "Receive" }
end`,
  },
  breadcrumbs: {
    description: "Breadcrumbs navigation component",
    modifiers: [],
    example: `# Breadcrumbs
Breadcrumbs do |bc|
  bc.item { a(href: "/") { "Home" } }
  bc.item { a(href: "/docs") { "Docs" } }
  bc.item { "Current" }
end`,
  },
  stat: {
    description: "Stat/metric display component",
    modifiers: ["horizontal", "vertical"],
    parts: ["title", "value", "desc", "figure", "actions"],
    example: `# Basic stat
Stat do |stat|
  stat.title { "Total Views" }
  stat.value { "89,400" }
  stat.desc { "21% more than last month" }
end`,
  },
  countdown: {
    description: "Countdown timer component",
    modifiers: [],
    example: `# Countdown
Countdown(value: 59)`,
  },
  divider: {
    description: "Divider/separator component",
    modifiers: ["vertical", "horizontal", "primary", "secondary", "accent", "neutral", "start", "end"],
    example: `# Horizontal divider
Divider { "OR" }

# Vertical divider
div(class: "flex") do
  div { "Left" }
  Divider(:vertical)
  div { "Right" }
end`,
  },
  toast: {
    description: "Toast notification component",
    modifiers: ["start", "center", "end", "top", "middle", "bottom"],
    example: `# Toast notifications
Toast(:end, :bottom) do
  Alert(:info) { "New message" }
  Alert(:success) { "Saved!" }
end`,
  },
  hero: {
    description: "Hero section component",
    modifiers: ["overlay"],
    parts: ["content", "overlay"],
    example: `# Basic hero
Hero do |hero|
  hero.content(class: "text-center") do
    h1(class: "text-5xl font-bold") { "Hello" }
    p { "Welcome to our site" }
    Button(:primary) { "Get Started" }
  end
end`,
  },
  footer: {
    description: "Footer component",
    modifiers: ["center", "horizontal"],
    parts: ["title"],
    example: `# Basic footer
Footer do |footer|
  footer.title { "Services" }
  a { "Branding" }
  a { "Design" }
end`,
  },
  join: {
    description: "Join component for grouping elements",
    modifiers: ["vertical", "horizontal"],
    example: `# Joined buttons
Join do
  Button(:active, class: "join-item") { "First" }
  Button(class: "join-item") { "Second" }
  Button(class: "join-item") { "Third" }
end`,
  },
  indicator: {
    description: "Indicator/badge overlay component",
    modifiers: [
      "start",
      "center",
      "end",
      "top",
      "middle",
      "bottom",
    ],
    parts: ["item"],
    example: `# Badge indicator
Indicator do |ind|
  ind.item { Badge(:secondary) { "99+" } }
  Button { "Inbox" }
end`,
  },
  swap: {
    description: "Swap/toggle content component",
    modifiers: ["active", "rotate", "flip"],
    parts: ["on", "off"],
    example: `# Swap icons
Swap(:rotate) do |swap|
  swap.on { "ON" }
  swap.off { "OFF" }
end`,
  },
  rating: {
    description: "Star rating component",
    modifiers: ["half", "hidden", "lg", "md", "sm", "xs"],
    example: `# Star rating
Rating(name: "rating-1") do |rating|
  rating.star(:checked)
  rating.star
  rating.star
  rating.star
  rating.star
end`,
  },
  mask: {
    description: "Mask shapes for images",
    modifiers: [
      "squircle",
      "heart",
      "hexagon",
      "hexagon_2",
      "decagon",
      "pentagon",
      "diamond",
      "square",
      "circle",
      "parallelogram",
      "parallelogram_2",
      "parallelogram_3",
      "parallelogram_4",
      "star",
      "star_2",
      "triangle",
      "triangle_2",
      "triangle_3",
      "triangle_4",
    ],
    example: `# Masked image
Mask(:squircle) do
  img(src: "image.jpg", alt: "Masked")
end`,
  },
};

// Create server
const server = new Server(
  {
    name: "daisyui-phlex",
    version: "1.0.0",
  },
  {
    capabilities: {
      tools: {},
    },
  }
);

// List available tools
server.setRequestHandler(ListToolsRequestSchema, async () => {
  return {
    tools: [
      {
        name: "get_component",
        description:
          "Get usage documentation and example code for a specific DaisyUI Ruby/Phlex component",
        inputSchema: {
          type: "object" as const,
          properties: {
            component: {
              type: "string",
              description: "Component name (e.g., button, card, modal)",
              enum: Object.keys(COMPONENT_SNIPPETS),
            },
          },
          required: ["component"],
        },
      },
      {
        name: "list_components",
        description: "List all available DaisyUI Ruby/Phlex components",
        inputSchema: {
          type: "object" as const,
          properties: {},
        },
      },
      {
        name: "search_components",
        description: "Search for components by modifier or functionality",
        inputSchema: {
          type: "object" as const,
          properties: {
            query: {
              type: "string",
              description:
                "Search query (e.g., 'primary', 'form', 'navigation')",
            },
          },
          required: ["query"],
        },
      },
      {
        name: "get_modifiers",
        description: "Get all available modifiers for a component",
        inputSchema: {
          type: "object" as const,
          properties: {
            component: {
              type: "string",
              description: "Component name",
              enum: Object.keys(COMPONENT_SNIPPETS),
            },
          },
          required: ["component"],
        },
      },
    ],
  };
});

// Handle tool calls
server.setRequestHandler(CallToolRequestSchema, async (request) => {
  const { name, arguments: args } = request.params;

  switch (name) {
    case "get_component": {
      const componentName = (args as { component: string }).component.toLowerCase();
      const component = COMPONENT_SNIPPETS[componentName];

      if (!component) {
        return {
          content: [
            {
              type: "text" as const,
              text: `Component "${componentName}" not found. Use list_components to see available components.`,
            },
          ],
        };
      }

      let result = `# ${componentName.charAt(0).toUpperCase() + componentName.slice(1)} Component\n\n`;
      result += `${component.description}\n\n`;
      result += `## Modifiers\n\`\`\`\n${component.modifiers.join(", ")}\n\`\`\`\n\n`;

      if (component.parts) {
        result += `## Sub-components/Parts\n\`\`\`\n${component.parts.join(", ")}\n\`\`\`\n\n`;
      }

      result += `## Example Usage\n\`\`\`ruby\n${component.example}\n\`\`\`\n`;

      return {
        content: [{ type: "text" as const, text: result }],
      };
    }

    case "list_components": {
      const components = Object.entries(COMPONENT_SNIPPETS)
        .map(([name, data]) => `- **${name}**: ${data.description}`)
        .join("\n");

      return {
        content: [
          {
            type: "text" as const,
            text: `# Available DaisyUI Ruby/Phlex Components\n\n${components}`,
          },
        ],
      };
    }

    case "search_components": {
      const query = ((args as { query: string }).query || "").toLowerCase();
      const matches: string[] = [];

      for (const [name, data] of Object.entries(COMPONENT_SNIPPETS)) {
        if (
          name.includes(query) ||
          data.description.toLowerCase().includes(query) ||
          data.modifiers.some((m) => m.includes(query)) ||
          data.example.toLowerCase().includes(query)
        ) {
          matches.push(name);
        }
      }

      if (matches.length === 0) {
        return {
          content: [
            {
              type: "text" as const,
              text: `No components found matching "${query}"`,
            },
          ],
        };
      }

      const results = matches
        .map((name) => {
          const data = COMPONENT_SNIPPETS[name];
          return `## ${name}\n${data.description}\nModifiers: ${data.modifiers.slice(0, 5).join(", ")}${data.modifiers.length > 5 ? "..." : ""}`;
        })
        .join("\n\n");

      return {
        content: [
          {
            type: "text" as const,
            text: `# Components matching "${query}"\n\n${results}`,
          },
        ],
      };
    }

    case "get_modifiers": {
      const componentName = (args as { component: string }).component.toLowerCase();
      const component = COMPONENT_SNIPPETS[componentName];

      if (!component) {
        return {
          content: [
            {
              type: "text" as const,
              text: `Component "${componentName}" not found.`,
            },
          ],
        };
      }

      const modifiersByCategory: Record<string, string[]> = {
        colors: [],
        sizes: [],
        styles: [],
        states: [],
        positions: [],
        other: [],
      };

      const colorKeywords = [
        "primary",
        "secondary",
        "accent",
        "neutral",
        "info",
        "success",
        "warning",
        "error",
      ];
      const sizeKeywords = ["xs", "sm", "md", "lg", "xl"];
      const styleKeywords = [
        "outline",
        "dash",
        "soft",
        "ghost",
        "link",
        "bordered",
        "glass",
      ];
      const stateKeywords = ["active", "disabled", "open", "checked"];
      const positionKeywords = [
        "top",
        "bottom",
        "left",
        "right",
        "start",
        "center",
        "end",
        "vertical",
        "horizontal",
      ];

      for (const mod of component.modifiers) {
        if (colorKeywords.includes(mod)) {
          modifiersByCategory.colors.push(mod);
        } else if (sizeKeywords.includes(mod)) {
          modifiersByCategory.sizes.push(mod);
        } else if (styleKeywords.includes(mod)) {
          modifiersByCategory.styles.push(mod);
        } else if (stateKeywords.includes(mod)) {
          modifiersByCategory.states.push(mod);
        } else if (positionKeywords.includes(mod)) {
          modifiersByCategory.positions.push(mod);
        } else {
          modifiersByCategory.other.push(mod);
        }
      }

      let result = `# ${componentName} Modifiers\n\n`;

      for (const [category, mods] of Object.entries(modifiersByCategory)) {
        if (mods.length > 0) {
          result += `## ${category.charAt(0).toUpperCase() + category.slice(1)}\n`;
          result += mods.map((m) => `- :${m}`).join("\n") + "\n\n";
        }
      }

      result += `## Usage Example\n\`\`\`ruby\n${componentName.charAt(0).toUpperCase() + componentName.slice(1)}(:primary, :lg) { "Content" }\n\`\`\``;

      return {
        content: [{ type: "text" as const, text: result }],
      };
    }

    default:
      return {
        content: [{ type: "text" as const, text: `Unknown tool: ${name}` }],
      };
  }
});

// Run server
async function main() {
  const transport = new StdioServerTransport();
  await server.connect(transport);
  console.error("DaisyUI Phlex MCP server running on stdio");
}

main().catch(console.error);
