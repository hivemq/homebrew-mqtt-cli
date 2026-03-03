class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.48.0/mqtt-cli-4.48.0-brew.zip"
  sha256 "bb4cc0411d8241c3f615e84cd155dd51e0d88ac50a6286ab9e779bf16b5f1481"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.48.0.jar"
    prefix.install "brew/mqtt-cli-4.48.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
