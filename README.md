# Secure-Bootloader-with-Roll-back-Feature for STM32f103c8t6
## Project Overview
This project implements a Secure Bootloader for the STM32F103C8T6 microcontroller, designed to facilitate secure firmware updates via a robust communication protocol. The bootloader ensures the authenticity, integrity, and confidentiality of the application through advanced cryptographic techniques.

### Key Features

Firmware Over-The-Air (FOTA): Enables remote updates of the firmware, ensuring that devices can be easily maintained and upgraded without physical access.

AES Encryption: Utilizes Advanced Encryption Standard (AES) for secure communication, ensuring that the firmware data is encrypted during transmission to protect against unauthorized access.

Authentication: Use AES + SHA256 to make digital Signature to ensure authentication

Seamless Application Transition: Allows for smooth switching from the bootloader to the application, ensuring that the device can reliably start up with the latest firmware.

Integrity Check: Includes mechanisms for verifying the integrity of the firmware using hash functions SHA-256 , preventing the installation of corrupted or tampered firmware.

Technical Stack
Microcontroller: STM32F103C8T6
Development Environment: STM32 HAL library
Programming Languages: C for the bootloader, Python for the communication script
Cryptography Libraries: Mbed TLS for cryptographic operations, custom CRC32 library
