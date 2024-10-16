class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.33.0/mqtt-cli-4.33.0-brew.zip"
  sha256 "4b4584edd18ea7aeb584fe4ba9b268479658723471c10ddddfaf6fafccb6e055"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.33.0.jar"
    prefix.install "brew/mqtt-cli-4.33.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
