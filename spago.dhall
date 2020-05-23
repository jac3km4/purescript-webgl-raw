{ name = "webgl-raw"
, dependencies =
  [ "arraybuffer-types"
  , "canvas"
  , "console"
  , "effect"
  , "functions"
  , "psci-support"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
