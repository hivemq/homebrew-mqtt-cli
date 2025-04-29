class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.39.0/mqtt-cli-4.39.0-brew.zip"
  sha256 "2033fdbd2a53f8985750882e4c41bf058d77e28e93320790fef41fdb3141c5d3"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.39.0.jar"
    prefix.install "brew/mqtt-cli-4.39.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
