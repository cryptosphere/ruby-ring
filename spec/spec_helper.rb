$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "ring"
require "coveralls"
Coveralls.wear!

RSpec.configure(&:disable_monkey_patching!)
