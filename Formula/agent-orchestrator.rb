class AgentOrchestrator < Formula
  desc "CLI orchestrator for Copilot and Claude execution pipelines"
  homepage "https://github.com/petarnenov/agent-orchestrator"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/petarnenov/agent-orchestrator/releases/download/v0.1.4/agent-orchestrator-x86_64-apple-darwin.tar.gz"
      sha256 "27e073e55591f653646ca5e262c2d4bf8a84a82c316405adb92504b3563d66bf"
    end

    on_arm do
      url "https://github.com/petarnenov/agent-orchestrator/releases/download/v0.1.4/agent-orchestrator-aarch64-apple-darwin.tar.gz"
      sha256 "0be46daf07381f668c8e8f0f26b1079abff4f6b3ecc5041d26e70868bbc89a72"
    end
  end

  def install
    bin.install "agent-orchestrator"
  end

  test do
    assert_match "CLI orchestrator", shell_output("#{bin}/agent-orchestrator --help")
  end
end
