cask "cloudflare-status-bar" do
  version "1.2.0"
  sha256 "07debd7848b506e3b5b41a0b2caae0beec1ccbe97d9f15ef381e90a62c263b67"

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
