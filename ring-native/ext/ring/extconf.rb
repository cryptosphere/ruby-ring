require "fileutils"

def sys(cmd)
  puts " -- #{cmd}"
  system(cmd).tap do |ret|
    fail "ERROR: '#{cmd}' failed" unless ret
  end
end

ring_src = File.expand_path("../../../vendor/ring", __FILE__)
ring_dst = File.expand_path("../../../lib/ring/native", __FILE__)

filename = RUBY_DESCRIPTION[/darwin/] ? "libring.dylib" : "libring.so"

Dir.chdir(ring_src) do
  sys("cargo build --release")
  FileUtils.cp "target/release/#{filename}", ring_dst
end

makefile = <<MAKEFILE
install:
\t@echo "Nothing to do"

clean:
\t@echo "Nothing to do"
MAKEFILE

File.open("Makefile", "w") { |f| f.write(makefile) }
