cask "eijii-beta" do
  version "0.0.3"
  sha256 "dd47a58fbecb21f6a2e763a81cf68a28b8f4d4a8730ac8f49383b1a478790c75"

  url "https://github.com/acyclic-eu/homebrew-eijii/releases/download/beta/eijii-#{version}-mac.dmg"

  name "eijii (beta)"
  desc "AI agent session manager - beta channel"
  homepage "https://acyclic.eu/eijii/download/beta"

  app "eijii.app"

end
