cask "querydock" do
  version "1.0.0"
  sha256 "19e9f1d08221bdab123c82bd63eba114d1b5c1c8cf647aeec94e71f3999e22c2"

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
