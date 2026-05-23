class EijiiTui < Formula
  desc "eijii TUI and daemon - AI agent session manager"
  homepage "https://acyclic.eu/eijii"
  version "0.0.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v#{version}/eijii-tui-#{version}-macos-arm64"
      sha256 "0232a5d2a8482f5543f7f3496108e5e7d20e171195f20ee8fdcfb398fcc881ea"
    end
  end

  resource "daemon" do
    url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v0.0.7/eijii-daemon-0.0.7.jar"
    sha256 "37c24bd9b23f3aa86927c01e69cef1c3f904363b9d51184f1e0bbb0b11037afa"
  end

  depends_on "openjdk@21"

  def install
    bin.install "eijii-tui-macos-arm64" => "eijii-tui"

    resource("daemon").stage do
      libexec.install "eijii-daemon.jar"
    end

    # Wrapper so `eijii server` works from the CLI
    (bin/"eijii").write <<~SH
      #!/bin/bash
      exec "#{Formula["openjdk@21"].opt_bin}/java" -jar "#{libexec}/eijii-daemon.jar" "$@"
    SH
  end

  test do
    output = shell_output("#{bin}/eijii-tui --version 2>&1", 1)
    assert_match "eijii", output
  end
end
