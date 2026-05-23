cask "eijii-beta@0.0.2" do
  version "0.0.2"
  sha256 "4be3a06fd87c58e0032d7b4cf0a8e9c182644cb2fbe2ba6ccf3548ec4e72b432"

  url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v#{version}/eijii-#{version}-mac.dmg"

  name "eijii (beta #{version})"
  desc "AI agent session manager - beta channel"
  homepage "https://acyclic.eu/eijii/download/beta"

  app "eijii.app"

end
