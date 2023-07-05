class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.17.0/mqtt-cli-4.17.0-brew.zip"
  sha256 "8c568c635601bcf265c2ddd93b5935acd31213bebd558b3f48097784b1ca6cb5"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.17.0.jar"
    prefix.install "brew/mqtt-cli-4.17.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
