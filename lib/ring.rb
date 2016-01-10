require "ring/version"
require "ring/native"

require "ffi"

# The *ring* cryptography library
module Ring
  # Native library binding
  module Native
    extend FFI::Library

    # Defined by the ring-native gem
    ffi_lib Ring::Native::LIB_PATH
  end
end
