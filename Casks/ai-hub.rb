# frozen_string_literal: true

# Seed cask. The desktop-release workflow rewrites `version` and the two
# sha256 lines (on_arm first, then on_intel) on every release; the zeros below
# are placeholders until desktop-v0.5.0 is published to this repo.
cask "ai-hub" do
  version "0.5.0"

  on_arm do
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"

    url "https://github.com/meta-thinking/homebrew-ai-hub/releases/download/desktop-v#{version}/AI-Hub_#{version}_aarch64.app.tar.gz"
  end
  on_intel do
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"

    url "https://github.com/meta-thinking/homebrew-ai-hub/releases/download/desktop-v#{version}/AI-Hub_#{version}_x64.app.tar.gz"
  end

  name "AI Hub"
  desc "Your AI subscriptions as one OpenAI-compatible endpoint for all your devices"
  homepage "https://aihub.meta-thinking.net/"

  app "AI Hub.app"

  zap trash: [
    "~/.ai-hub",
    "~/Library/Application Support/AI-Hub",
    "~/Library/Application Support/net.meta-thinking.ai-hub",
  ]

  caveats <<~EOS
    AI Hub is signed with a Developer ID and notarized by Apple, so it opens
    normally — no Gatekeeper prompt, nothing to disable.

    Upgrading from AI-Proxy? AI Hub moves your settings, sign-ins and
    connected tools over on first launch. Afterwards you can
    `brew uninstall --cask ai-proxy` (without --zap, which would delete data).

    The `ai-hub` command line tool installs from the app itself:
    open AI Hub -> Server -> Install CLI.

    Docs: https://aihub.meta-thinking.net/docs
  EOS
end
