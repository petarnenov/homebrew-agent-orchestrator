class AgentOrchestrator < Formula
  desc "CLI orchestrator for Copilot and Claude execution pipelines"
  homepage "https://github.com/petarnenov/agent-orchestrator"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/petarnenov/agent-orchestrator/releases/download/v0.1.8/agent-orchestrator-x86_64-apple-darwin.tar.gz"
      sha256 "f06ab51d5160480e590f1538562a1cb0902abe81c8b9846e499e21373f11e3e8"
    end

    on_arm do
      url "https://github.com/petarnenov/agent-orchestrator/releases/download/v0.1.8/agent-orchestrator-aarch64-apple-darwin.tar.gz"
      sha256 "5ab0fb34573e0a414be79453917432ad23cbde02670dcaa18c015c93e60a19a5"
    end
  end

  def install
    bin.install "agent-orchestrator"
  end

  test do
    assert_match "CLI orchestrator", shell_output("#{bin}/agent-orchestrator --help")
  end
end
