cask "eijii-beta@0.0.8" do
  version "0.0.8"
  sha256 "ddc1b05beb05e55bce85c6fceecb81c53380a32914b316f2d8fcd0b0969d24bd"

  url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v#{version}/eijii-#{version}-mac.dmg"

  name "eijii (beta #{version})"
  desc "AI agent session manager - beta channel"
  homepage "https://acyclic.eu/apps/eijii/download/beta"

  app "eijii.app"

end
