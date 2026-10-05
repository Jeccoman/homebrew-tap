class Overseer < Formula
  desc "Local-first AI assistant for the terminal"
  homepage "https://github.com/Jeccoman/overseer-downloads"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Jeccoman/overseer-downloads/releases/download/terminal-v0.1.4-preview.1/overseer-terminal-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "3db54387f8fbb4ac5fd88c6137a9c23b60a0807137036a84059948ffae0cb765"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Jeccoman/overseer-downloads/releases/download/terminal-v0.1.4-preview.1/overseer-terminal-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ababcf96b61a715d263f38ab78ab2a3d5f804aeed545f46d6a72f162d863b62"
    end
  end

  def install
    bin.install "overseer-tui"
  end

  def caveats
    "Run overseer-tui. Configure Ollama or a cloud provider in Settings. Linux requires Ubuntu 24.04-compatible libraries and libasound2."
  end

  test do
    assert_equal "overseer-tui #{version}", shell_output("#{bin}/overseer-tui --version").strip
  end
end
