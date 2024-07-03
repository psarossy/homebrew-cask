cask "stickoking-razer" do
    version "0.4.14"
    sha256 "df0474eaa59fa168a8b98379772433c33e59d0176590b6bb27bce84048a74b85"
  
    url "https://github.com/stickoking/razer-macos/releases/download/v#{version}/Razer.macOS-#{version}-universal.dmg"
    name "Razer macOS"
    desc "Open source colour effects manager for Razer devices"
    homepage "https://github.com/stickoking/razer-macos"

    conflicts_with cask: "1kc-razer"

    livecheck do
      url :url
      strategy :github_latest
    end
  
    app "Razer macOS.app"
  
    zap trash: [
      "~/Library/Preferences/com.electron.razer-macos.helper.Renderer.plist",
      "~/Library/Preferences/com.electron.razer-macos.plist",
      "~/Library/Saved Application State/com.electron.razer-macos.savedState",
    ]
  end
  