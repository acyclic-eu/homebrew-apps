cask "eijii-beta@0.0.4" do
  version "0.0.4"
  sha256 "f3274bc6215b403164907a975de1b0a295fb4fe2725bbc969a80db6ced08d7ab"

  url "https://github.com/acyclic-eu/homebrew-apps/releases/download/v#{version}/eijii-#{version}-mac.dmg"

  name "eijii (beta #{version})"
  desc "AI agent session manager - beta channel"
  homepage "https://acyclic.eu/apps/eijii/download/beta"

  app "eijii.app"

end
