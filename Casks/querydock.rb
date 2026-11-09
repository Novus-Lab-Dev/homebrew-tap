cask "querydock" do
  version "1.0.0"
  sha256 "e2a1cba0c0ab287d175ceaf41538353863f6f87b72d3a3dbc60e9d23bc49bdb9"

  url "https://github.com/Novus-Lab-Dev/QueryDock/releases/download/v#{version}/QueryDock_#{version}_universal.dmg"
  name "QueryDock"
  desc "Modern Native-Grade Database GUI Client for PostgreSQL, MySQL, and SQLite"
  homepage "https://github.com/Novus-Lab-Dev/QueryDock"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "QueryDock.app"

  zap trash: [
    "~/Library/Application Support/com.querydock.client",
    "~/Library/Caches/com.querydock.client",
    "~/Library/Preferences/com.querydock.client.plist",
    "~/Library/Saved Application State/com.querydock.client.savedState",
  ]
end
