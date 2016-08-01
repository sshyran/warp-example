require "warp"
require "json"
require "./example/*"
require "./web/*"

module Example
  Web::Main.run 3000
end
