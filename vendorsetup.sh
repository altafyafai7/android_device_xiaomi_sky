#!/bin/bash
#clover Vendor Setup Script
echo "Setting up repositories for Redmi 12 5G / Poco M6 Pro 5G (sky)..."

# Clone the kernel source
echo "Cloning kernel repository..."
git clone https://github.com/askthekaif/android_xiaomi_sky_kernel.git -b 15.0-AtomX device/xiaomi/sky-kernel

# Clone the vendor source
echo "Cloning vendor repository..."
git clone https://github.com/askthekaif/android_vendor_xiaomi_sky.git -b 16.0 vendor/xiaomi/sky

# Clone BCR repository
echo "Cloning BCR repository..."
rm -rf vendor/bcr && git clone https://github.com/Chaitanyakm/vendor_bcr.git vendor/bcr

# Clone the dolby repository
echo "Cloning dolby hardware repository..."
git clone https://github.com/askthekaif/android_hardware_dolby.git hardware/dolby

# Clone the hardware repository
echo "Cloning hardware repository..."
git clone https://github.com/Evolution-X-Devices/hardware_xiaomi.git -b bka hardware/xiaomi

# Clone the agm repository
echo "cloning agm repository..."
rm -rf hardware/qcom-caf/sm8450/audio/agm && git clone https://github.com/askthekaif/agm.git hardware/qcom-caf/sm8450/audio/agm 

rm -rf hardware/qcom-caf/sm8450/audio/pal && git clone https://github.com/askthekaif/arpal-lx.git hardware/qcom-caf/sm8450/audio/pal

echo "Setup complete. Repositories are ready."

echo "Completed, proceeding to lunch"
