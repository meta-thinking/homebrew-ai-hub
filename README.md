# meta-thinking/homebrew-ai-hub

Homebrew tap for **AI Hub** — your AI subscriptions (Claude, Gemini, …) as one
OpenAI-compatible endpoint, shared with every device on your network.

```sh
brew tap meta-thinking/ai-hub
brew install --cask meta-thinking/ai-hub/ai-hub
brew upgrade --cask ai-hub        # updates (the app also updates itself)
```

Releases (tags `desktop-v*`) carry the macOS, Windows and Linux builds plus the
headless CLI tarballs; the app and website read them from this repo.

AI Hub was previously published as **AI-Proxy** from `meta-thinking/tap`. That cask
is deprecated and points here; AI Hub migrates an AI-Proxy install on first launch.

Site: https://aihub.meta-thinking.net
