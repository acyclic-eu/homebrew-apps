class EijiiTui < Formula
  desc "eijii TUI and daemon - AI agent session manager"
  homepage "https://acyclic.eu/eijii"
  version "0.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v#{version}/eijii-tui-#{version}-macos-arm64"
      sha256 "47aae65fef283e27fa71e5f676f22530def4f44acef30aef3bd612c6c42c999f"
    end
  end

  resource "daemon" do
    url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v0.0.3/eijii-daemon-0.0.3.jar"
    sha256 "eb2cafc95449378bd71f54dcaf2c04d9bd9f81c1d72d5045b335ac82e7519d37"
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
