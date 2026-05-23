cask "eijii-beta" do
  version "0.0.6"
  sha256 "6aadbce40bf851efb9e78b31faf4e9bc03b2686e02254286cf086ffc315c31a9"

  url "https://github.com/acyclic-eu/homebrew-apps/releases/download/beta/eijii-#{version}-mac.dmg"

  name "eijii (beta)"
  desc "AI agent session manager - beta channel"
  homepage "https://acyclic.eu/apps/eijii/download/beta"

  app "eijii.app"

end
