require "ring/version"
require "ring/native"

require "ffi"

module Ring
  module Native
    extend FFI::Library

    # Defined by the ring-native gem
    ffi_lib Ring::Native::LIB_PATH
  end
end
