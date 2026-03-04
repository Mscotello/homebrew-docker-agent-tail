class DockerAgentTail < Formula
  desc "Auto-discover Docker containers, tail their logs, and write structured files for AI agents"
  homepage "https://docker-agent-tail.michaelscotello.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Mscotello/docker-agent-tail/releases/download/v0.1.0/docker-agent-tail_0.1.0_darwin_amd64.tar.gz"
      sha256 "32af9345d83393400abeb3c0b39bed5f5f8db6772eebf8264e0234d5a0c7455f"
    end

    on_arm do
      url "https://github.com/Mscotello/docker-agent-tail/releases/download/v0.1.0/docker-agent-tail_0.1.0_darwin_arm64.tar.gz"
      sha256 "e98e5e714ec530ed10250686142d4d149d74a4f414de8b7418eaedb3a15ca6a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Mscotello/docker-agent-tail/releases/download/v0.1.0/docker-agent-tail_0.1.0_linux_amd64.tar.gz"
      sha256 "582ef7e85705d2b73c6db9c9c7556c88f4a9a33e875ef62b50c0817e6996b264"
    end

    on_arm do
      url "https://github.com/Mscotello/docker-agent-tail/releases/download/v0.1.0/docker-agent-tail_0.1.0_linux_arm64.tar.gz"
      sha256 "7dc4fcede3ae4f6b6e356219cd6ad3c752aec749aeae9856dc9a3b7393d9a969"
    end
  end

  def install
    bin.install "docker-agent-tail"
  end

  test do
    system "#{bin}/docker-agent-tail", "--help"
  end
end
