class EijiiTui < Formula
  desc "eijii TUI and daemon - AI agent session manager"
  homepage "https://acyclic.eu/eijii"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v#{version}/eijii-tui-#{version}-macos-arm64"
      sha256 "f0f38ca44329fdbd80e14a76ce15c2e33556a805bfbc08f1912352cc1d65f9c3"
    end
  end

  resource "daemon" do
    url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v0.0.8/eijii-daemon-0.0.8.jar"
    sha256 "438a6d3825b3d5b4e30d24aaa57d592bc07eac5ed030e0d840c7c4b50e892141"
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
