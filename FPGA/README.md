
---

# FPGA Installation and Setup Guide

## Introduction

This guide provides step-by-step instructions to install and set up FPGA development tools on your system. The process involves downloading necessary files, configuring the environment, and compiling a simple FPGA project.

## Prerequisites

- Ensure you have administrative privileges on your system.
- The system should have internet access for downloading files and packages.

## Installation Steps

### Step 1: Download FPGA Files

1. Download the zip file [fpga.zip](#) and place it on your desktop.
2. Open the terminal and navigate to the fpga folder on your desktop.

```bash
cd ~/Desktop/fpga
chmod +x setup.sh
sudo bash setup.sh
```

### Step 2: Copy Additional Files

1. Copy the files `Symbiflow` and `Pygmy-dev` from `/Computer/root` to `/desktop/fpga`.
2. Download `arch.tar.gz` from [this link](https://iith-my.sharepoint.com/...) and place it in `/desktop/fpga`.

### Step 3: Install Dependencies

Run the following commands in the terminal:

```bash
sudo apt update -y
sudo apt upgrade -y
sudo apt install openssh-server sshpass build-essential libssl-dev libffi-dev python3-dev bison flex git tcl-dev tcl tcl-tclreadline libreadline-dev autoconf libtool make automake texinfo pkg-config libusb-1.0-0 libusb-1.0-0-dev gcc-arm-none-eabi libnewlib-arm-none-eabi telnet python3 apt-utils libxslt-dev cmake curl python3-pip python3-venv -y
pip3 install gdown lxml simplejson
```

### Step 4: Extract and Set Environment Variables

```bash
cp arch.tar.gz /home/<your_username>/Desktop/fpga/arch.tar.gz
tar -C $INSTALL_DIR -xvf /home/<your_username>/Desktop/fpga/arch.tar.gz
export PATH="$INSTALL_DIR/quicklogic-arch-defs/bin:$INSTALL_DIR/quicklogic-arch-defs/bin/python3:$PATH"
```

### Step 5: Install Python Dependencies

```bash
cd /home/<your_username>/Desktop/fpga/pygmy-dev/tools/quicklogic-fasm
nvim requirements.txt
# Replace contents with specified lines
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
sudo python3 setup.py install
```

### Step 6: Compile Yosys and Symbiflow Plugins

```bash
cd /home/<your_username>/Desktop/fpga/pygmy-dev/tools/quicklogic-yosys
make config-gcc
make -j4 install PREFIX=$INSTALL_DIR

cd /home/<your_username>/Desktop/fpga/pygmy-dev/tools/yosys-symbiflow-plugins
export PATH=$INSTALL_DIR/bin:$PATH
make -j4 install
```

### Step 7: Compile VTR Verilog-to-Routing

```bash
cd /home/<your_username>/Desktop/fpga/pygmy-dev/tools/vtr-verilog-to-routing
make -j4
```

### Step 8: Update Bash Configuration

```bash
nvim ~/.bashrc
source ~/.bashrc
```

## Verifying the Installation

Run the following commands to verify the installation:

```bash
vpr -h
yosys -h
qlfasm -h
ql_symbiflow -h
```

## Compile FPGA Example

```bash
cd $INSTALL_DIR/quicklogic-arch-defs/tests/counter_16bit
ls
ql_symbiflow -compile -d ql-eos-s3 -P pd64 -v counter_16bit.v -t top -p chandalar.pcf -dump binary
```

## FPGA Examples

```bash
cd /home/<your_username>/Desktop/fpga
ls
mkdir fpga-examples
cd fpga-examples
svn co https://github.com/gadepall/vaman/trunk/fpga/setup/codes/blink
cd blink
ls
ql_symbiflow -compile -src /home/<your_username>/Desktop/fpga/fpga-examples/blink -d ql-eos-s3 -P PU64 -v helloworldfpga.v -t helloworldfpga -p quickfeather.pcf -dump binary
ls
```


# FPGA Installation and Setup Guide


## Acknowledgements

Special thanks to [Rampalli-Nikhil-Sai ](https://github.com/Rampalli-Nikhil-Sai) for their contributions to the [VAMAN_FPGA](https://github.com/Rampalli-Nikhil-Sai/FWC_Coursework/tree/main/VAMAN_FPGA). 

