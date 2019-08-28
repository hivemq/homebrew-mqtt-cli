class HivemqCli < Formula
  desc "The HiveMQ CLI Tool"
  homepage "https://www.hivemq.com"
  url "https://www.hivemq.com/tests/hivemq-cli-1.0-distribution.zip"
  sha256 "c58b7ac1601f9f52c1487440cf9c734ef52fe179dc8389c88acfdbe81e5208d0"
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
