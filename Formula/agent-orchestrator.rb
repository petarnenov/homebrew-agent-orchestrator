class AgentOrchestrator < Formula
  desc "CLI orchestrator for Copilot and Claude execution pipelines"
  homepage "https://github.com/petarnenov/agent-orchestrator"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/petarnenov/agent-orchestrator/releases/download/v0.1.3/agent-orchestrator-x86_64-apple-darwin.tar.gz"
      sha256 "a58e42b79317b3a60290eb8a39b1f4110c79654d6a121872058619b440acd1da"
    end

    on_arm do
      url "https://github.com/petarnenov/agent-orchestrator/releases/download/v0.1.3/agent-orchestrator-aarch64-apple-darwin.tar.gz"
      sha256 "2904012148d036ccbfb8aaf4c11b2e2b20fca512a2b4df510ee424e1ab32471c"
    end
  end

  def install
    bin.install "agent-orchestrator"
  end

  test do
    assert_match "CLI orchestrator", shell_output("#{bin}/agent-orchestrator --help")
  end
end
