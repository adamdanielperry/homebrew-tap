cask "found-again" do
  version "2.0"
  sha256 "4869132981b6647c89e408302c5d81850d60e10299aad95f2bdc5cf4c0cd272a"

  url "https://github.com/adamdanielperry/found-again/releases/download/v#{version}/FoundAgain-#{version}.dmg",
      verified: "github.com/adamdanielperry/found-again/"
  name "Found Again"
  desc "Recover deleted photos, videos and files from cards and external drives"
  homepage "https://foundagain.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Found Again.app"

  zap trash: [
    "~/Library/Caches/uk.co.weio.foundagain",
    "~/Library/Preferences/uk.co.weio.foundagain.plist",
    "~/Library/Saved Application State/uk.co.weio.foundagain.savedState",
  ]
end
