################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/aes.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/aesni.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/arc4.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/aria.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/asn1parse.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/asn1write.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/base64.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/bignum.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/blowfish.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/camellia.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ccm.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/certs.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/chacha20.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/chachapoly.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/cipher.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/cipher_wrap.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/cmac.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/constant_time.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ctr_drbg.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/debug.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/des.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/dhm.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ecdh.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ecdsa.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ecjpake.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ecp.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ecp_curves.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/entropy.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/entropy_poll.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/error.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/gcm.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/havege.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/hkdf.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/hmac_drbg.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/md.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/md2.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/md4.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/md5.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/memory_buffer_alloc.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/mps_reader.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/mps_trace.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/net_sockets.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/nist_kw.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/oid.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/padlock.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/pem.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/pk.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/pk_wrap.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/pkcs11.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/pkcs12.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/pkcs5.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/pkparse.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/pkwrite.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/platform.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/platform_util.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/poly1305.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_aead.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_cipher.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_client.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_driver_wrappers.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_ecp.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_hash.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_mac.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_rsa.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_se.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_slot_management.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_storage.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_its_file.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ripemd160.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/rsa.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/rsa_internal.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/sha1.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/sha256.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/sha512.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_cache.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_ciphersuites.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_cli.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_cookie.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_msg.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_srv.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_ticket.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_tls.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_tls13_keys.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/threading.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/timing.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/version.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/version_features.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/x509.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/x509_create.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/x509_crl.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/x509_crt.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/x509_csr.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/x509write_crt.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/x509write_csr.c \
/home/abokhalil/Desktop/mbedtls-2.28.1/library/xtea.c 

OBJS += \
./library/aes.o \
./library/aesni.o \
./library/arc4.o \
./library/aria.o \
./library/asn1parse.o \
./library/asn1write.o \
./library/base64.o \
./library/bignum.o \
./library/blowfish.o \
./library/camellia.o \
./library/ccm.o \
./library/certs.o \
./library/chacha20.o \
./library/chachapoly.o \
./library/cipher.o \
./library/cipher_wrap.o \
./library/cmac.o \
./library/constant_time.o \
./library/ctr_drbg.o \
./library/debug.o \
./library/des.o \
./library/dhm.o \
./library/ecdh.o \
./library/ecdsa.o \
./library/ecjpake.o \
./library/ecp.o \
./library/ecp_curves.o \
./library/entropy.o \
./library/entropy_poll.o \
./library/error.o \
./library/gcm.o \
./library/havege.o \
./library/hkdf.o \
./library/hmac_drbg.o \
./library/md.o \
./library/md2.o \
./library/md4.o \
./library/md5.o \
./library/memory_buffer_alloc.o \
./library/mps_reader.o \
./library/mps_trace.o \
./library/net_sockets.o \
./library/nist_kw.o \
./library/oid.o \
./library/padlock.o \
./library/pem.o \
./library/pk.o \
./library/pk_wrap.o \
./library/pkcs11.o \
./library/pkcs12.o \
./library/pkcs5.o \
./library/pkparse.o \
./library/pkwrite.o \
./library/platform.o \
./library/platform_util.o \
./library/poly1305.o \
./library/psa_crypto.o \
./library/psa_crypto_aead.o \
./library/psa_crypto_cipher.o \
./library/psa_crypto_client.o \
./library/psa_crypto_driver_wrappers.o \
./library/psa_crypto_ecp.o \
./library/psa_crypto_hash.o \
./library/psa_crypto_mac.o \
./library/psa_crypto_rsa.o \
./library/psa_crypto_se.o \
./library/psa_crypto_slot_management.o \
./library/psa_crypto_storage.o \
./library/psa_its_file.o \
./library/ripemd160.o \
./library/rsa.o \
./library/rsa_internal.o \
./library/sha1.o \
./library/sha256.o \
./library/sha512.o \
./library/ssl_cache.o \
./library/ssl_ciphersuites.o \
./library/ssl_cli.o \
./library/ssl_cookie.o \
./library/ssl_msg.o \
./library/ssl_srv.o \
./library/ssl_ticket.o \
./library/ssl_tls.o \
./library/ssl_tls13_keys.o \
./library/threading.o \
./library/timing.o \
./library/version.o \
./library/version_features.o \
./library/x509.o \
./library/x509_create.o \
./library/x509_crl.o \
./library/x509_crt.o \
./library/x509_csr.o \
./library/x509write_crt.o \
./library/x509write_csr.o \
./library/xtea.o 

C_DEPS += \
./library/aes.d \
./library/aesni.d \
./library/arc4.d \
./library/aria.d \
./library/asn1parse.d \
./library/asn1write.d \
./library/base64.d \
./library/bignum.d \
./library/blowfish.d \
./library/camellia.d \
./library/ccm.d \
./library/certs.d \
./library/chacha20.d \
./library/chachapoly.d \
./library/cipher.d \
./library/cipher_wrap.d \
./library/cmac.d \
./library/constant_time.d \
./library/ctr_drbg.d \
./library/debug.d \
./library/des.d \
./library/dhm.d \
./library/ecdh.d \
./library/ecdsa.d \
./library/ecjpake.d \
./library/ecp.d \
./library/ecp_curves.d \
./library/entropy.d \
./library/entropy_poll.d \
./library/error.d \
./library/gcm.d \
./library/havege.d \
./library/hkdf.d \
./library/hmac_drbg.d \
./library/md.d \
./library/md2.d \
./library/md4.d \
./library/md5.d \
./library/memory_buffer_alloc.d \
./library/mps_reader.d \
./library/mps_trace.d \
./library/net_sockets.d \
./library/nist_kw.d \
./library/oid.d \
./library/padlock.d \
./library/pem.d \
./library/pk.d \
./library/pk_wrap.d \
./library/pkcs11.d \
./library/pkcs12.d \
./library/pkcs5.d \
./library/pkparse.d \
./library/pkwrite.d \
./library/platform.d \
./library/platform_util.d \
./library/poly1305.d \
./library/psa_crypto.d \
./library/psa_crypto_aead.d \
./library/psa_crypto_cipher.d \
./library/psa_crypto_client.d \
./library/psa_crypto_driver_wrappers.d \
./library/psa_crypto_ecp.d \
./library/psa_crypto_hash.d \
./library/psa_crypto_mac.d \
./library/psa_crypto_rsa.d \
./library/psa_crypto_se.d \
./library/psa_crypto_slot_management.d \
./library/psa_crypto_storage.d \
./library/psa_its_file.d \
./library/ripemd160.d \
./library/rsa.d \
./library/rsa_internal.d \
./library/sha1.d \
./library/sha256.d \
./library/sha512.d \
./library/ssl_cache.d \
./library/ssl_ciphersuites.d \
./library/ssl_cli.d \
./library/ssl_cookie.d \
./library/ssl_msg.d \
./library/ssl_srv.d \
./library/ssl_ticket.d \
./library/ssl_tls.d \
./library/ssl_tls13_keys.d \
./library/threading.d \
./library/timing.d \
./library/version.d \
./library/version_features.d \
./library/x509.d \
./library/x509_create.d \
./library/x509_crl.d \
./library/x509_crt.d \
./library/x509_csr.d \
./library/x509write_crt.d \
./library/x509write_csr.d \
./library/xtea.d 


# Each subdirectory must supply rules for building sources it contributes
library/aes.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/aes.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/aesni.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/aesni.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/arc4.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/arc4.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/aria.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/aria.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/asn1parse.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/asn1parse.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/asn1write.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/asn1write.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/base64.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/base64.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/bignum.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/bignum.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/blowfish.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/blowfish.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/camellia.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/camellia.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ccm.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ccm.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/certs.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/certs.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/chacha20.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/chacha20.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/chachapoly.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/chachapoly.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/cipher.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/cipher.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/cipher_wrap.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/cipher_wrap.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/cmac.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/cmac.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/constant_time.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/constant_time.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ctr_drbg.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ctr_drbg.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/debug.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/debug.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/des.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/des.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/dhm.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/dhm.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ecdh.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ecdh.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ecdsa.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ecdsa.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ecjpake.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ecjpake.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ecp.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ecp.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ecp_curves.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ecp_curves.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/entropy.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/entropy.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/entropy_poll.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/entropy_poll.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/error.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/error.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/gcm.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/gcm.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/havege.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/havege.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/hkdf.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/hkdf.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/hmac_drbg.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/hmac_drbg.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/md.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/md.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/md2.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/md2.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/md4.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/md4.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/md5.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/md5.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/memory_buffer_alloc.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/memory_buffer_alloc.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/mps_reader.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/mps_reader.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/mps_trace.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/mps_trace.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/net_sockets.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/net_sockets.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/nist_kw.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/nist_kw.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/oid.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/oid.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/padlock.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/padlock.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/pem.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/pem.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/pk.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/pk.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/pk_wrap.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/pk_wrap.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/pkcs11.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/pkcs11.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/pkcs12.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/pkcs12.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/pkcs5.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/pkcs5.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/pkparse.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/pkparse.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/pkwrite.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/pkwrite.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/platform.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/platform.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/platform_util.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/platform_util.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/poly1305.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/poly1305.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/psa_crypto.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/psa_crypto_aead.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_aead.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/psa_crypto_cipher.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_cipher.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/psa_crypto_client.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_client.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/psa_crypto_driver_wrappers.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_driver_wrappers.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/psa_crypto_ecp.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_ecp.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/psa_crypto_hash.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_hash.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/psa_crypto_mac.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_mac.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/psa_crypto_rsa.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_rsa.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/psa_crypto_se.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_se.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/psa_crypto_slot_management.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_slot_management.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/psa_crypto_storage.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_crypto_storage.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/psa_its_file.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/psa_its_file.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ripemd160.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ripemd160.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/rsa.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/rsa.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/rsa_internal.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/rsa_internal.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/sha1.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/sha1.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/sha256.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/sha256.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/sha512.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/sha512.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ssl_cache.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_cache.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ssl_ciphersuites.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_ciphersuites.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ssl_cli.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_cli.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ssl_cookie.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_cookie.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ssl_msg.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_msg.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ssl_srv.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_srv.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ssl_ticket.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_ticket.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ssl_tls.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_tls.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/ssl_tls13_keys.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/ssl_tls13_keys.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/threading.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/threading.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/timing.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/timing.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/version.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/version.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/version_features.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/version_features.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/x509.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/x509.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/x509_create.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/x509_create.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/x509_crl.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/x509_crl.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/x509_crt.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/x509_crt.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/x509_csr.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/x509_csr.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/x509write_crt.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/x509write_crt.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/x509write_csr.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/x509write_csr.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
library/xtea.o: /home/abokhalil/Desktop/mbedtls-2.28.1/library/xtea.c library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-library

clean-library:
	-$(RM) ./library/aes.cyclo ./library/aes.d ./library/aes.o ./library/aes.su ./library/aesni.cyclo ./library/aesni.d ./library/aesni.o ./library/aesni.su ./library/arc4.cyclo ./library/arc4.d ./library/arc4.o ./library/arc4.su ./library/aria.cyclo ./library/aria.d ./library/aria.o ./library/aria.su ./library/asn1parse.cyclo ./library/asn1parse.d ./library/asn1parse.o ./library/asn1parse.su ./library/asn1write.cyclo ./library/asn1write.d ./library/asn1write.o ./library/asn1write.su ./library/base64.cyclo ./library/base64.d ./library/base64.o ./library/base64.su ./library/bignum.cyclo ./library/bignum.d ./library/bignum.o ./library/bignum.su ./library/blowfish.cyclo ./library/blowfish.d ./library/blowfish.o ./library/blowfish.su ./library/camellia.cyclo ./library/camellia.d ./library/camellia.o ./library/camellia.su ./library/ccm.cyclo ./library/ccm.d ./library/ccm.o ./library/ccm.su ./library/certs.cyclo ./library/certs.d ./library/certs.o ./library/certs.su ./library/chacha20.cyclo ./library/chacha20.d ./library/chacha20.o ./library/chacha20.su ./library/chachapoly.cyclo ./library/chachapoly.d ./library/chachapoly.o ./library/chachapoly.su ./library/cipher.cyclo ./library/cipher.d ./library/cipher.o ./library/cipher.su ./library/cipher_wrap.cyclo ./library/cipher_wrap.d ./library/cipher_wrap.o ./library/cipher_wrap.su ./library/cmac.cyclo ./library/cmac.d ./library/cmac.o ./library/cmac.su ./library/constant_time.cyclo ./library/constant_time.d ./library/constant_time.o ./library/constant_time.su ./library/ctr_drbg.cyclo ./library/ctr_drbg.d ./library/ctr_drbg.o ./library/ctr_drbg.su ./library/debug.cyclo ./library/debug.d ./library/debug.o ./library/debug.su ./library/des.cyclo ./library/des.d ./library/des.o ./library/des.su ./library/dhm.cyclo ./library/dhm.d ./library/dhm.o ./library/dhm.su ./library/ecdh.cyclo ./library/ecdh.d ./library/ecdh.o ./library/ecdh.su ./library/ecdsa.cyclo ./library/ecdsa.d ./library/ecdsa.o ./library/ecdsa.su ./library/ecjpake.cyclo ./library/ecjpake.d ./library/ecjpake.o ./library/ecjpake.su ./library/ecp.cyclo ./library/ecp.d ./library/ecp.o ./library/ecp.su ./library/ecp_curves.cyclo ./library/ecp_curves.d ./library/ecp_curves.o ./library/ecp_curves.su ./library/entropy.cyclo ./library/entropy.d ./library/entropy.o ./library/entropy.su ./library/entropy_poll.cyclo ./library/entropy_poll.d ./library/entropy_poll.o ./library/entropy_poll.su ./library/error.cyclo ./library/error.d ./library/error.o ./library/error.su ./library/gcm.cyclo ./library/gcm.d ./library/gcm.o ./library/gcm.su ./library/havege.cyclo ./library/havege.d ./library/havege.o ./library/havege.su ./library/hkdf.cyclo ./library/hkdf.d ./library/hkdf.o ./library/hkdf.su ./library/hmac_drbg.cyclo ./library/hmac_drbg.d ./library/hmac_drbg.o ./library/hmac_drbg.su ./library/md.cyclo ./library/md.d ./library/md.o ./library/md.su ./library/md2.cyclo ./library/md2.d ./library/md2.o ./library/md2.su ./library/md4.cyclo ./library/md4.d ./library/md4.o ./library/md4.su ./library/md5.cyclo ./library/md5.d ./library/md5.o ./library/md5.su ./library/memory_buffer_alloc.cyclo ./library/memory_buffer_alloc.d ./library/memory_buffer_alloc.o ./library/memory_buffer_alloc.su ./library/mps_reader.cyclo ./library/mps_reader.d ./library/mps_reader.o ./library/mps_reader.su ./library/mps_trace.cyclo ./library/mps_trace.d ./library/mps_trace.o ./library/mps_trace.su ./library/net_sockets.cyclo ./library/net_sockets.d ./library/net_sockets.o ./library/net_sockets.su ./library/nist_kw.cyclo ./library/nist_kw.d ./library/nist_kw.o ./library/nist_kw.su ./library/oid.cyclo ./library/oid.d ./library/oid.o ./library/oid.su ./library/padlock.cyclo ./library/padlock.d ./library/padlock.o ./library/padlock.su ./library/pem.cyclo ./library/pem.d ./library/pem.o ./library/pem.su ./library/pk.cyclo ./library/pk.d ./library/pk.o ./library/pk.su ./library/pk_wrap.cyclo ./library/pk_wrap.d ./library/pk_wrap.o ./library/pk_wrap.su ./library/pkcs11.cyclo ./library/pkcs11.d ./library/pkcs11.o ./library/pkcs11.su ./library/pkcs12.cyclo ./library/pkcs12.d ./library/pkcs12.o ./library/pkcs12.su ./library/pkcs5.cyclo ./library/pkcs5.d ./library/pkcs5.o ./library/pkcs5.su ./library/pkparse.cyclo ./library/pkparse.d ./library/pkparse.o ./library/pkparse.su ./library/pkwrite.cyclo ./library/pkwrite.d ./library/pkwrite.o ./library/pkwrite.su ./library/platform.cyclo ./library/platform.d ./library/platform.o ./library/platform.su ./library/platform_util.cyclo ./library/platform_util.d ./library/platform_util.o ./library/platform_util.su ./library/poly1305.cyclo ./library/poly1305.d ./library/poly1305.o ./library/poly1305.su ./library/psa_crypto.cyclo ./library/psa_crypto.d ./library/psa_crypto.o ./library/psa_crypto.su ./library/psa_crypto_aead.cyclo ./library/psa_crypto_aead.d ./library/psa_crypto_aead.o ./library/psa_crypto_aead.su ./library/psa_crypto_cipher.cyclo ./library/psa_crypto_cipher.d ./library/psa_crypto_cipher.o ./library/psa_crypto_cipher.su ./library/psa_crypto_client.cyclo ./library/psa_crypto_client.d ./library/psa_crypto_client.o ./library/psa_crypto_client.su ./library/psa_crypto_driver_wrappers.cyclo ./library/psa_crypto_driver_wrappers.d ./library/psa_crypto_driver_wrappers.o ./library/psa_crypto_driver_wrappers.su ./library/psa_crypto_ecp.cyclo ./library/psa_crypto_ecp.d ./library/psa_crypto_ecp.o ./library/psa_crypto_ecp.su ./library/psa_crypto_hash.cyclo ./library/psa_crypto_hash.d ./library/psa_crypto_hash.o ./library/psa_crypto_hash.su ./library/psa_crypto_mac.cyclo ./library/psa_crypto_mac.d ./library/psa_crypto_mac.o ./library/psa_crypto_mac.su ./library/psa_crypto_rsa.cyclo ./library/psa_crypto_rsa.d ./library/psa_crypto_rsa.o ./library/psa_crypto_rsa.su ./library/psa_crypto_se.cyclo ./library/psa_crypto_se.d ./library/psa_crypto_se.o ./library/psa_crypto_se.su ./library/psa_crypto_slot_management.cyclo ./library/psa_crypto_slot_management.d ./library/psa_crypto_slot_management.o
	-$(RM) ./library/psa_crypto_slot_management.su ./library/psa_crypto_storage.cyclo ./library/psa_crypto_storage.d ./library/psa_crypto_storage.o ./library/psa_crypto_storage.su ./library/psa_its_file.cyclo ./library/psa_its_file.d ./library/psa_its_file.o ./library/psa_its_file.su ./library/ripemd160.cyclo ./library/ripemd160.d ./library/ripemd160.o ./library/ripemd160.su ./library/rsa.cyclo ./library/rsa.d ./library/rsa.o ./library/rsa.su ./library/rsa_internal.cyclo ./library/rsa_internal.d ./library/rsa_internal.o ./library/rsa_internal.su ./library/sha1.cyclo ./library/sha1.d ./library/sha1.o ./library/sha1.su ./library/sha256.cyclo ./library/sha256.d ./library/sha256.o ./library/sha256.su ./library/sha512.cyclo ./library/sha512.d ./library/sha512.o ./library/sha512.su ./library/ssl_cache.cyclo ./library/ssl_cache.d ./library/ssl_cache.o ./library/ssl_cache.su ./library/ssl_ciphersuites.cyclo ./library/ssl_ciphersuites.d ./library/ssl_ciphersuites.o ./library/ssl_ciphersuites.su ./library/ssl_cli.cyclo ./library/ssl_cli.d ./library/ssl_cli.o ./library/ssl_cli.su ./library/ssl_cookie.cyclo ./library/ssl_cookie.d ./library/ssl_cookie.o ./library/ssl_cookie.su ./library/ssl_msg.cyclo ./library/ssl_msg.d ./library/ssl_msg.o ./library/ssl_msg.su ./library/ssl_srv.cyclo ./library/ssl_srv.d ./library/ssl_srv.o ./library/ssl_srv.su ./library/ssl_ticket.cyclo ./library/ssl_ticket.d ./library/ssl_ticket.o ./library/ssl_ticket.su ./library/ssl_tls.cyclo ./library/ssl_tls.d ./library/ssl_tls.o ./library/ssl_tls.su ./library/ssl_tls13_keys.cyclo ./library/ssl_tls13_keys.d ./library/ssl_tls13_keys.o ./library/ssl_tls13_keys.su ./library/threading.cyclo ./library/threading.d ./library/threading.o ./library/threading.su ./library/timing.cyclo ./library/timing.d ./library/timing.o ./library/timing.su ./library/version.cyclo ./library/version.d ./library/version.o ./library/version.su ./library/version_features.cyclo ./library/version_features.d ./library/version_features.o ./library/version_features.su ./library/x509.cyclo ./library/x509.d ./library/x509.o ./library/x509.su ./library/x509_create.cyclo ./library/x509_create.d ./library/x509_create.o ./library/x509_create.su ./library/x509_crl.cyclo ./library/x509_crl.d ./library/x509_crl.o ./library/x509_crl.su ./library/x509_crt.cyclo ./library/x509_crt.d ./library/x509_crt.o ./library/x509_crt.su ./library/x509_csr.cyclo ./library/x509_csr.d ./library/x509_csr.o ./library/x509_csr.su ./library/x509write_crt.cyclo ./library/x509write_crt.d ./library/x509write_crt.o ./library/x509write_crt.su ./library/x509write_csr.cyclo ./library/x509write_csr.d ./library/x509write_csr.o ./library/x509write_csr.su ./library/xtea.cyclo ./library/xtea.d ./library/xtea.o ./library/xtea.su

.PHONY: clean-library

