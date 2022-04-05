class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.7.6/mqtt-cli-4.7.6-brew.zip"
  sha256 "4aa231fdc13121899659d872843e71ff66ff8a41dbd6f789c68052311ad4d1c5"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.7.6.jar"
    prefix.install "brew/mqtt-cli-4.7.6.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
