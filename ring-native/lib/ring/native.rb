require "ring/native/version"

module Ring
  module Native
    filename = RUBY_DESCRIPTION[/darwin/] ? "libring.dylib" : "libring.so"
    LIB_PATH = File.expand_path("../native/#{filename}", __FILE__)
  end
end
