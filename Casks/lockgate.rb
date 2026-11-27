cask "lockgate" do
  version "0.5.3"
  sha256 "4fbf70d2fa9e76ee94dc32b5f119b203f23e15ba641e77845377f13c24c0a1d0"

  url "https://github.com/luozhiyun993/lockgate/releases/download/v#{version}/Lockgate-#{version}-macOS-universal.dmg"
  name "Lockgate"
  desc "Gate for Claude agents with proxy, exit IP and launch checks"
  homepage "https://github.com/luozhiyun993/lockgate"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Lockgate.app"

  zap trash: "~/Library/Application Support/Lockgate"

  caveats <<~EOS
    Lockgate is ad-hoc signed and not notarized, so macOS blocks the first launch.
    To allow it, run:
      xattr -dr com.apple.quarantine "#{appdir}/Lockgate.app"
  EOS
end
