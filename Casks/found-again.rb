cask "found-again" do
  version "2.0.1"
  sha256 "c844f22cbac2db2d6040b4477fa1857b10677acad835cb84eed922d7d3571585"

  url "https://github.com/adamdanielperry/found-again/releases/download/v#{version}/FoundAgain-#{version}.dmg"
  name "Found Again"
  desc "Recover deleted photos, videos and files from cards and external drives"
  homepage "https://foundagain.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Found Again.app"

  zap trash: [
    "~/Library/Caches/uk.co.weio.foundagain",
    "~/Library/Preferences/uk.co.weio.foundagain.plist",
    "~/Library/Saved Application State/uk.co.weio.foundagain.savedState",
  ]
end
