class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v1.1.2/mqtt-cli-1.1.2-brew.zip"
  sha256 "06818c2970b86b50705d5495d92923227894ef9a52ef667410475ff340ee3653"
  depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-1.1.2.jar"
    prefix.install "mqtt-cli-1.1.2.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end