cask "cloudflare-status-bar" do
  version "1.2.1"
  sha256 "eda22a1e5418fad0cc8c387bd139d35e7b3af3512c070ed9a19d67059685dce4"

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
