class AgentOrchestrator < Formula
  desc "CLI orchestrator for Copilot and Claude execution pipelines"
  homepage "https://github.com/petarnenov/agent-orchestrator"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/petarnenov/agent-orchestrator/releases/download/v0.1.1/agent-orchestrator-x86_64-apple-darwin.tar.gz"
      sha256 "e8f2e2f311f87a5705edbc658c36878e103623c17ae5b7827c420b455c4b9a30"
    end

    on_arm do
      url "https://github.com/petarnenov/agent-orchestrator/releases/download/v0.1.1/agent-orchestrator-aarch64-apple-darwin.tar.gz"
      sha256 "9baf04f96f6ac3e0b227c62ee223deace9f44b753844966a31c1a9401c12e032"
    end
  end

  def install
    bin.install "agent-orchestrator"
  end

  test do
    assert_match "CLI orchestrator", shell_output("#{bin}/agent-orchestrator --help")
  end
end
