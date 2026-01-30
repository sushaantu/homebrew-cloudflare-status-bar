cask "cloudflare-status-bar" do
  version "1.6.0"
  sha256 "1b43d14e7fd3abbc7b525f24e424f666d65e23ef22a66875cb99a128a67c39d9"

  url "https://github.com/sushaantu/CloudflareStatusBar/releases/download/v#{version}/CloudflareStatusBar-#{version}.zip"
  name "Cloudflare Status Bar"
  desc "Menu bar app for monitoring Cloudflare resources"
  homepage "https://github.com/sushaantu/CloudflareStatusBar"

  depends_on macos: ">= :ventura"

  app "CloudflareStatusBar.app"

  zap trash: [
    "~/Library/Preferences/com.cloudflare.statusbar.plist",
  ]
end
