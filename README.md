# Rpi0Sendiq

Minimal app to show issue with `mix firmware` compiling with `elixir_make`

Error:
```
scrub-otp-release.sh: ERROR: Unexpected executable format for '/home/lmarlow/Code/mine/nerves/rpi0_sendiq/_build/_nerves-tmp/rootfs-additions/srv/erlang/lib/rpi0_sendiq-0.1.0/priv/sendiq'

Got:
 readelf:ARM;0x5000000, Version5 EABI

Expecting:
 readelf:ARM;0x5000200, Version5 EABI, soft-float ABI

This file was compiled for the host or a different target and probably
will not work.

Check the following:

1. Are you using a path dependency in your mix deps? If so, run
   'mix clean' in that directory to avoid pulling in any of its
   build products.

2. Did you recently upgrade to Elixir 1.9 or Nerves 1.5?
   Nerves 1.5 adds support for Elixir 1.9 Releases and requires
   you to either add an Elixir 1.9 Release configuration or add
   Distillery as a dependency. Without this, the OTP binaries
   for your build machine will get included incorrectly and cause
   this error. See
   https://hexdocs.pm/nerves/updating-projects.html#updating-from-v1-4-to-v1-5

3. Did you recently upgrade or change your Nerves system? If so,
   try cleaning and rebuilding this project and its deps.

4. Are you building outside of Nerves' mix integration? If so,
   make sure that you've sourced 'nerves-env.sh'.

If you're still having trouble, please file an issue on Github
at https://github.com/nerves-project/nerves_system_br/issues.

** (Mix) Nerves encountered an error. %IO.Stream{device: :standard_io, line_or_bytes: :line, raw: true}
```
