class AgentOrchestrator < Formula
  desc "CLI orchestrator for Copilot and Claude execution pipelines"
  homepage "https://github.com/petarnenov/agent-orchestrator"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/petarnenov/agent-orchestrator/releases/download/v0.1.6/agent-orchestrator-x86_64-apple-darwin.tar.gz"
      sha256 "bd858e048b38ca4acd9418032a2a0caee1ec31d980f7e205105bead8e86e7883"
    end

    on_arm do
      url "https://github.com/petarnenov/agent-orchestrator/releases/download/v0.1.6/agent-orchestrator-aarch64-apple-darwin.tar.gz"
      sha256 "47f21f61434c8cf40606fc0148f4eb566a67cc30f3d8ce78a54f4bb4ebae17ef"
    end
  end

  def install
    bin.install "agent-orchestrator"
  end

  test do
    assert_match "CLI orchestrator", shell_output("#{bin}/agent-orchestrator --help")
  end
end
