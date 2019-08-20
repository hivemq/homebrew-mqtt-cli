class HivemqCli < Formula
  desc "The HiveMQ CLI Tool"
  homepage "https://www.hivemq.com"
  url "https://www.hivemq.com/tests/hivemq-cli-1.0-distribution.zip"
  sha256 "980c477bf7f96d97a2f34c98f22949c75906542800fa7aa249130bf09498e5e4"
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
