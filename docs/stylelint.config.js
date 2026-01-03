module.exports = {
  extends: ["stylelint-config-standard"],

  rules: {
    "at-rule-no-unknown": [
      true,
      {
        ignoreAtRules: [
          "apply",
          "layer",
          "plugin",
          "responsive",
          "screen",
          "source",
          "tailwind",
          "theme",
          "variants",
          "utility",
          "variant",
        ]
      }
    ],
    "at-rule-prelude-no-invalid": null,
    "at-rule-no-deprecated": [
      true,
      {
        ignoreAtRules: [
          "apply",
          "layer",
          "plugin",
          "responsive",
          "screen",
          "source",
          "tailwind",
          "theme",
          "variants",
          "utility",
          "variant",
        ]
      }
    ],
    "property-no-unknown": [
      true,
      {
        "ignoreAtRules": ["plugin"]
      }
    ],
    "import-notation": "string",
    "no-invalid-position-at-import-rule": null,
    "function-no-unknown": [
      true,
      {
        ignoreFunctions: [/image-(url|path)/]
      }
    ],
    "no-descending-specificity": null,
    "selector-class-pattern": /(_?[a-z][a-z0-9]*)(-+[a-z0-9]+)*$/,
  },
  ignoreFiles: [
    "app/assets/stylesheets/filepond.css"
  ]

}
