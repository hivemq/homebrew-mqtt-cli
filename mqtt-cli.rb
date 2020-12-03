class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.4.3/mqtt-cli-4.4.3-brew.zip"
  sha256 "be62ca280285bb7afddeea996be6c4d968a5a844d8757622b5d7b4df3bf3f519"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.4.3.jar"
    prefix.install "brew/mqtt-cli-4.4.3.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
