class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.35.0/mqtt-cli-4.35.0-brew.zip"
  sha256 "4442ebd4f6d7db09b899f6cf753d4af816e8bcf4a291f9488d56f5986320edd6"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.35.0.jar"
    prefix.install "brew/mqtt-cli-4.35.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
