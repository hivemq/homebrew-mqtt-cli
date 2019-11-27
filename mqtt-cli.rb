class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v1.1.0/mqtt-cli-1.1.0-brew.zip"
  sha256 "15423cda83a6822c5fca390be19e6c1fa4e85166996291e435d1412106c66932"
  depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-1.1.0.jar"
    prefix.install "mqtt-cli-1.1.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
