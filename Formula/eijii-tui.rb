class EijiiTui < Formula
  desc "eijii TUI and daemon - AI agent session manager"
  homepage "https://acyclic.eu/eijii"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v#{version}/eijii-tui-#{version}-macos-arm64"
      sha256 "f29ef61063f28d9c013ccd8944b7cb80402cd85bc8b0552596e19f540a004628"
    end
  end

  resource "daemon" do
    url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v0.0.6/eijii-daemon-0.0.6.jar"
    sha256 "1aa62d090a0b4998b35cbff1089c2f7c036e449e0989970199e9c6dd11b9a5ed"
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
