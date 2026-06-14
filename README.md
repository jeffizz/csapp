
## Architecture Lab GUI Simulators Guide

### 1. Local Host Environment Setup (macOS)

1. **Install XQuartz** via Homebrew on your Mac terminal:

```bash
brew install xquartz
```

**Configure Security Settings**:

    * Open the XQuartz application from your Applications folder.
    * Navigate to **XQuartz -> Preferences -> Security**.
    * Check the box for **"Allow connections from network clients"**.
    * _Note: If this is your first time checking this option, restart XQuartz (or log out and back into macOS) for changes to take effect._

**Authorize Local X11 Connections**:

```bash
export DISPLAY=:0
xhost +localhost
```

### 2. Compilation & Build Instructions

```bash
cd /csapp/labs/ch4-architecture/sim
make clean
make
```

### 3. Running the GUI Simulators

```bash
cd /csapp/labs/ch4-architecture/sim/seq
./ssim -g ../y86-code/asumi.yo
cd /csapp/labs/ch4-architecture/sim/pipe
./psim -g ../y86-code/asumi.yo
```
