require "formula"

class hivemqCli < Formula
  homepage "https://hivemq.com"
  url "path_to_distribution_file/mqtt-cli-1.0-distribution.zip"
  sha256 "c59fa90c5c298c5d4e127d375ec1113a20ebaf8de51f3fa542ea11d419926ee0"

  def install
      inreplace "brew/hivemq-cli", "##PREFIX##", "#{prefix}"
      prefix.install "hivemq-cli.jar"
      bin.install "brew/hivemq-cli"
  end
end