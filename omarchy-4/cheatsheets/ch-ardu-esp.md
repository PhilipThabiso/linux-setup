# Install CLI
sudo pacman -S arduino-cli

# Serial permissions
sudo usermod -aG uucp "$USER"

# Log out/in, then set ESP32 board URL
arduino-cli config init
arduino-cli config set board_manager.additional_urls \
  '["https://espressif.github.io/arduino-esp32/package_esp32_index.json"]'

# Update + install ESP32 core
arduino-cli core update-index
arduino-cli core install esp8266:esp8266

# See connected board/port
arduino-cli board list

# See available ESP32 board names
arduino-cli board listall esp32:esp32

# Compile
arduino-cli compile --fqbn esp32:esp32:esp32 ~/Arduino/MySketch

# Upload
arduino-cli upload -p /dev/ttyUSB0 --fqbn esp32:esp32:esp32 \
  ~/Arduino/MySketch

# Serial monitor
arduino-cli monitor -p /dev/ttyUSB0 -c baudrate=115200

# Optional: install a library
arduino-cli lib install "Adafruit NeoPixel"


arduino-cli compile --upload -p /dev/ttyUSB0 \
  --fqbn esp8266:esp8266:generic ~/arduino/test
