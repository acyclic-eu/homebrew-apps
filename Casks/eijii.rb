cask "eijii" do
  version "0.0.5"
  sha256 "1ee96dbe2c3ebba4d8fa5c9868e3ede8509b1d6dcdc8f4921170c7150c2ebd64"

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
