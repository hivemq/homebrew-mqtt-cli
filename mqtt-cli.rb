class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.18.0/mqtt-cli-4.18.0-brew.zip"
  sha256 "37daacc151915a870463b8078b7943633ad2b41c984884d12bb76bb2970a9069"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.18.0.jar"
    prefix.install "brew/mqtt-cli-4.18.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
