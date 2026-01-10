cask "cloudflare-status-bar" do
  version "1.3.0"
  sha256 "da5c8d3959c3e73ac0acd6326485c1a502206e62b394de777b8984186c2b34a9"

  url "https://github.com/sushaantu/CloudflareStatusBar/releases/download/v#{version}/CloudflareStatusBar.zip"
  name "Cloudflare Status Bar"
  desc "Menu bar app for monitoring Cloudflare resources"
  homepage "https://github.com/sushaantu/CloudflareStatusBar"

  depends_on macos: ">= :ventura"

  app "CloudflareStatusBar.app"

  zap trash: [
    "~/Library/Preferences/com.cloudflare.statusbar.plist",
  ]
end
