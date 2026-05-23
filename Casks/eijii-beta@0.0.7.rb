cask "eijii-beta@0.0.7" do
  version "0.0.7"
  sha256 "cdc404b902232f919a305bbc3c14afab5f3ad7a591e113d3098fd71dac810c11"

  url "https://github.com/acyclic-eu/homebrew-apps/releases/download/v#{version}/eijii-#{version}-mac.dmg"

  name "eijii (beta #{version})"
  desc "AI agent session manager - beta channel"
  homepage "https://acyclic.eu/apps/eijii/download/beta"

  app "eijii.app"

end
