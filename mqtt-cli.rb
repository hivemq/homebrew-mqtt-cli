class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.52.0/mqtt-cli-4.52.0-brew.zip"
  sha256 "53c8ec7c1c1046a1c63dd890187f07015b8a52d7b12d2ea92eb2b50fd25c7a5c"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.52.0.jar"
    prefix.install "brew/mqtt-cli-4.52.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
