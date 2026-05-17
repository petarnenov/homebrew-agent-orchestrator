class AgentOrchestrator < Formula
  desc "CLI orchestrator for Copilot and Claude execution pipelines"
  homepage "https://github.com/petarnenov/agent-orchestrator"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/petarnenov/agent-orchestrator/releases/download/v0.1.7/agent-orchestrator-x86_64-apple-darwin.tar.gz"
      sha256 "8d0dd9cfb808009c4a661483036fd0bff9300a6d53320078b3ace267ca20339d"
    end

    on_arm do
      url "https://github.com/petarnenov/agent-orchestrator/releases/download/v0.1.7/agent-orchestrator-aarch64-apple-darwin.tar.gz"
      sha256 "60162b69e1a0dd7e83c0af75e3976eb6780981c5dbd55a9512a1e1ca00bd5e10"
    end
  end

  def install
    bin.install "agent-orchestrator"
  end

  test do
    assert_match "CLI orchestrator", shell_output("#{bin}/agent-orchestrator --help")
  end
end
