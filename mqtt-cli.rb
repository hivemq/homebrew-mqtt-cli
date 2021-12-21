class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.7.3/mqtt-cli-4.7.3-brew.zip"
  sha256 "d7db06fbb237e7d40062ca5ffbd3aa7ac69fb1cea2da10e52f57cb4d3f1b2a34"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.7.3.jar"
    prefix.install "brew/mqtt-cli-4.7.3.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
