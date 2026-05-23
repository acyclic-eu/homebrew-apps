cask "eijii" do
  version "0.0.3"
  sha256 "dd47a58fbecb21f6a2e763a81cf68a28b8f4d4a8730ac8f49383b1a478790c75"

  url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/v#{version}/eijii-#{version}-mac.dmg"

  name "eijii"
  desc "AI agent session manager"
  homepage "https://acyclic.eu/eijii"

  app "eijii.app"


  zap trash: [
    "~/.eijii",
    "~/Library/Application Support/eijii",
    "~/Library/Logs/eijii",
  ]
end
