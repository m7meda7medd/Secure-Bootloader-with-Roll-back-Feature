################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mbedtls/library/aes.c \
../mbedtls/library/platform.c \
../mbedtls/library/platform_util.c \
../mbedtls/library/sha256.c 

OBJS += \
./mbedtls/library/aes.o \
./mbedtls/library/platform.o \
./mbedtls/library/platform_util.o \
./mbedtls/library/sha256.o 

C_DEPS += \
./mbedtls/library/aes.d \
./mbedtls/library/platform.d \
./mbedtls/library/platform_util.d \
./mbedtls/library/sha256.d 


# Each subdirectory must supply rules for building sources it contributes
mbedtls/library/%.o mbedtls/library/%.su mbedtls/library/%.cyclo: ../mbedtls/library/%.c mbedtls/library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I/home/abokhalil/Desktop/mbedtls-2.28.1/library -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"/home/abokhalil/STM32CubeIDE/workspace_1.16.0/Abokhalil_Loader/mbedtls" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-mbedtls-2f-library

clean-mbedtls-2f-library:
	-$(RM) ./mbedtls/library/aes.cyclo ./mbedtls/library/aes.d ./mbedtls/library/aes.o ./mbedtls/library/aes.su ./mbedtls/library/platform.cyclo ./mbedtls/library/platform.d ./mbedtls/library/platform.o ./mbedtls/library/platform.su ./mbedtls/library/platform_util.cyclo ./mbedtls/library/platform_util.d ./mbedtls/library/platform_util.o ./mbedtls/library/platform_util.su ./mbedtls/library/sha256.cyclo ./mbedtls/library/sha256.d ./mbedtls/library/sha256.o ./mbedtls/library/sha256.su

.PHONY: clean-mbedtls-2f-library

