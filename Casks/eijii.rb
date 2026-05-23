cask "eijii" do
  version "0.0.8"
  sha256 "ddc1b05beb05e55bce85c6fceecb81c53380a32914b316f2d8fcd0b0969d24bd"

  url "https://github.com/acyclic-eu/homebrew-apps/releases/download/v#{version}/eijii-#{version}-mac.dmg"

  name "eijii"
  desc "AI agent session manager"
  homepage "https://acyclic.eu/apps/eijii"

  app "eijii.app"


  zap trash: [
    "~/.eijii",
    "~/Library/Application Support/eijii",
    "~/Library/Logs/eijii",
  ]
end
