class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.56.0/mqtt-cli-4.56.0-brew.zip"
  sha256 "9e5b777cbcc62f5a6ea4b0228f2796691a737d3262b59183f06dd7f4a002f52f"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.56.0.jar"
    prefix.install "brew/mqtt-cli-4.56.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
