# ppa

# Ubuntu 22.04
## Manually setup PPA for Ubuntu 22.04
```bash
curl -s --compressed "https://eieiof11.github.io/ppa/debian/jammy/KEY.gpg" | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/f11_ppa.gpg >/dev/null
echo "deb [signed-by=/etc/apt/trusted.gpg.d/f11_ppa.gpg] https://eieiof11.github.io/ppa/debian/jammy ./" | sudo tee /etc/apt/sources.list.d/f11_ppa.gpg.list
sudo apt update
```

## Install Package

### Install jsk
```bash
sudo apt install ros-humble-jsk*
```

### Install casadi-ament
```bash
sudo apt install ros-humble-casadi-ament
```

### Install livox driver
```bash
sudo apt install livox-sdk2 ros-humble-livox*
```

### Install f11 pkg
```bash
sudo apt install ros-humble-twist-switcher
sudo apt install ros-humble-data-logger
```
