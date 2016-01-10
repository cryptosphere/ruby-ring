require "ring/native/version"

# The *ring* cryptography library
module Ring
  # Native library binding
  module Native
    filename = RUBY_DESCRIPTION[/darwin/] ? "libring.dylib" : "libring.so"
    LIB_PATH = File.expand_path("../native/#{filename}", __FILE__)
  end
end
