ring-native
===========
[![Gem Version](https://badge.fury.io/rb/ring-native.svg)](http://badge.fury.io/rb/ring-native)
[![OpenSSL licensed](https://img.shields.io/badge/license-OpenSSL-blue.svg)](https://github.com/briansmith/ring/blob/master/LICENSE)

The [*ring* cryptography library][ring] packaged as a RubyGem. This library
specifically bundles [ring-ffi], which builds *ring* as a dynamic library
intended for libffi bindings.

Since *ring* has no upstream releases, this gem will be released as periodic
snapshots with version numbers corresponding to the date the snapshot was taken
until such time as *ring* has versioned releases.

The boilerplate code in the ring-native gem is MIT along with the rest of the
ruby-ring gem, however *ring* itself is a fork of BoringSSL and therefore
carries with it a mixture of licenses, mostly the OpenSSL license.

For more information on the licensing of *ring* itself, please see the
[*ring* LICENSE][license].

[ring]: https://github.com/briansmith/ring/
[ring-ffi]: https://github.com/briansmith/ring-ffi
[license]: https://github.com/briansmith/ring/blob/master/LICENSE

# Usage

This gem is automatically installed along with the *ring* gem.

You will need rustc and cargo installed for *ring* to compile.
