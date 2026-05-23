cask "eijii-alpha" do
  version :latest
  sha256 :no_check

  url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/alpha/eijii-mac.dmg"

  name "eijii (alpha)"
  desc "AI agent session manager - alpha channel"
  homepage "https://acyclic.eu/eijii/download/alpha"

  app "eijii.app"

end
