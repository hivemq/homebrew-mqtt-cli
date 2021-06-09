class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.6.2/mqtt-cli-4.6.2-brew.zip"
  sha256 "444c1688dd956237aa6025ad861fdb41513bcc664c6e922844ae0e205421d5ea"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.6.2.jar"
    prefix.install "brew/mqtt-cli-4.6.2.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
