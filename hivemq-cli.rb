class HivemqCli < Formula
  desc "The HiveMQ CLI Tool"
  homepage "https://www.hivemq.com"
  url "https://www.hivemq.com/tests/hivemq-cli-1.0-distribution.zip"
  sha256 "02639b844537169267593cbf5e8322998a15d36b3b6fcf3504669ae54c3a59de"
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
