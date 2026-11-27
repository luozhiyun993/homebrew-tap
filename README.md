# luozhiyun993 Tap

Homebrew tap for [Lockgate](https://github.com/luozhiyun993/lockgate).

## Install

```sh
brew install --cask luozhiyun993/tap/lockgate
```

Homebrew 7 and later only load third-party taps you have trusted. If the
command above is refused, run this first:

```sh
brew trust luozhiyun993/tap
```

Lockgate is ad-hoc signed and not notarized, so macOS blocks the first launch.
To allow it:

```sh
xattr -dr com.apple.quarantine /Applications/Lockgate.app
```

## Upgrade and uninstall

```sh
brew upgrade --cask lockgate
brew uninstall --cask lockgate
```
