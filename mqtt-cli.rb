class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.14.0/mqtt-cli-4.14.0-brew.zip"
  sha256 "bae94650197bb9f1a077e5bcb5c60c54b9e7a38309ce628f91b60ec23f52a3de"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.14.0.jar"
    prefix.install "brew/mqtt-cli-4.14.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
