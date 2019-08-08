class HivemqCli < Formula
  desc "The HiveMQ CLI Tool"
  homepage "https://www.hivemq.com"
  url "https://www.hivemq.com/tests/hivemq-cli-1.0-distribution.zip"
  sha256 "b79ab87a9064ec122e538e06c6d3c3594440221fd52e450a2831aac5e9a31605"
  depends_on :java => "1.8+"
  
  def install
    inreplace "brew/hivemq-cli", "##PREFIX##", "#{prefix}"
    prefix.install "hivemq-cli.jar"
    bin.install "brew/hivemq-cli"
  end

  test do
    system "false"
  end
end
