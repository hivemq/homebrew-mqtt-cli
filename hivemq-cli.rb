class HivemqCli < Formula
  desc "The HiveMQ CLI Tool"
  homepage "https://www.hivemq.com"
  url "https://www.hivemq.com/tests/hivemq-cli-1.0-distribution.zip"
  sha256 "a113610f08ed801c77c14cffb89270355eb575ca65a8ba08c1098d32358d57c5"
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
