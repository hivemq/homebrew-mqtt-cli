class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.8.0/mqtt-cli-4.8.0-brew.zip"
  sha256 "7eb25ec6ce89d100492d1e875657589add670eeee37432e14fa40f9186f8f7db"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.8.0.jar"
    prefix.install "brew/mqtt-cli-4.8.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
