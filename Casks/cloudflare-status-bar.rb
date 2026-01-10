cask "cloudflare-status-bar" do
  version "1.1.0"
  sha256 "9fe3a7449ef431929404af70ce344cbde421377d5b42fcd468a3dda4e5631d1c"

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
