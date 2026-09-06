# Install CLI
sudo pacman -S arduino-cli

# Serial permissions
sudo usermod -aG uucp "$USER"

# Log out/in, then install AVR core
arduino-cli core update-index
arduino-cli core install arduino:avr

# See connected port
arduino-cli board list

# Compile: Pro Mini 5V / 16MHz
arduino-cli compile --fqbn arduino:avr:pro:cpu=16MHzatmega328 \
  ~/Arduino/MySketch

# Upload
arduino-cli upload -p /dev/ttyUSB0 \
  --fqbn arduino:avr:pro:cpu=16MHzatmega328 ~/Arduino/MySketch

# Compile: Pro Mini 3.3V / 8MHz
arduino-cli compile --fqbn arduino:avr:pro:cpu=8MHzatmega328 \
  ~/Arduino/MySketch

# Upload
arduino-cli upload -p /dev/ttyUSB0 \
  --fqbn arduino:avr:pro:cpu=8MHzatmega328 ~/Arduino/MySketch

# Serial monitor
arduino-cli monitor -p /dev/ttyUSB0 -c baudrate=115200
