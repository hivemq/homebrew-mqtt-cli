class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.8.3/mqtt-cli-4.8.3-brew.zip"
  sha256 "f57925a439f20b1931ce93544b72c832927dbae40389ef9fe856b30167c7003e"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.8.3.jar"
    prefix.install "brew/mqtt-cli-4.8.3.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
