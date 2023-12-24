# Vaman_PYGMY Code Uploading Guide

This guide outlines the steps to upload code to Vaman_PYGMY. Follow these instructions carefully to ensure successful execution.

## Installation Steps in Termux

1. Open Termux and follow the installation steps outlined in [vaman/installation/termuxdebian/termuxdebian_arm.txt](vaman/installation/termuxdebian/termuxdebian_arm.txt).

2. Open the `main.c` file to edit the code according to your preferences. The file is located at `/data/data/com.termux/files/home/arm-examples/blink/src/main.c`.

3. After making necessary modifications, save the file and exit.

4. To execute and generate the bin file, move to the path `blink/GCC_Project`:

   ```bash
   cd blink/GCC_Project
   make -j4
   ```

   The path for the `blink.bin` file is `GCC_Project/output/bin/blink.bin`.

## PC Setup

5. Open a terminal on your PC and navigate to the home directory. Perform the following installations:

   ```bash
   # Download the pygmy-sdk
   cd /data/data/com.termux/files/home/
   git clone --recursive https://github.com/optimuslogic/pygmy-dev

   # If Tinyfpga is not installed
   git clone --recursive https://github.com/QuickLogic-Corp/TinyFPGA-Programmer-Application.git
   sudo apt install python3-pip
   sudo pip3 install tinyfpgab pyserial
   sudo reboot
   ```

6. Transfer the `blink.bin` file to the PC along with the files included in the git repository. Ensure all files are in the same location, for example, the home directory.

7. Update the `flash.sh` file:

   ```bash
   sudo python3 /home/Username/TinyFPGA-Programmer-Application/tinyfpga-programmer-gui.py --port /dev/ttyACM0 --appfpga top.bin --m4app blink.bin --mode m4-fpga --reset
   ```

   Replace `Username` with your PC's username. To find the PC's username, type `whoami` in the terminal. After editing, save the file and exit.

8. Connect Vaman to the PC. Ensure that Vaman is in Download mode, i.e., the green LED must be blinking.

   To enable Download Mode: Press the RST button once and then press the USR button twice.

9. The code should be successfully booted.

## Troubleshooting

If you encounter the error "CLI mode, No port Found," kindly change the cable, board, and retry.

Note: Ensure you have the necessary permissions and dependencies installed on your system. Make sure to carefully follow each step to ensure a successful upload process.