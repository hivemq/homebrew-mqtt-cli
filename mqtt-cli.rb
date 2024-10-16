class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.33.0/mqtt-cli-4.33.0-brew.zip"
  sha256 "7187dd5c066c02a4b5544072f16307c0de661a0d9022de71dda40d60a44341d5"
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
