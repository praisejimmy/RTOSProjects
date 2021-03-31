################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables
C_SRCS += \
./Core/Src/main.c \
./Core/Src/stm32l4xx_hal_msp.c \
./Core/Src/stm32l4xx_it.c \
./Core/Src/syscalls.c \
./Core/Src/sysmem.c \
./Core/Src/system_stm32l4xx.c

OBJS += \
./Bin/Src/main.o \
./Bin/Src/stm32l4xx_hal_msp.o \
./Bin/Src/stm32l4xx_it.o \
./Bin/Src/syscalls.o \
./Bin/Src/sysmem.o \
./Bin/Src/system_stm32l4xx.o

C_DEPS += \
./Bin/Src/main.d \
./Bin/Src/stm32l4xx_hal_msp.d \
./Bin/Src/stm32l4xx_it.d \
./Bin/Src/syscalls.d \
./Bin/Src/sysmem.d \
./Bin/Src/system_stm32l4xx.d


# Each subdirectory must supply rules for building sources it contributes
Bin/Src/main.o: ./Core/Src/main.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c -I./Core/Inc -I./STM32L4xx_HAL_Driver/Inc -I./STM32L4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Bin/Src/main.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Bin/Src/stm32l4xx_hal_msp.o: ./Core/Src/stm32l4xx_hal_msp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c -I./Core/Inc -I./STM32L4xx_HAL_Driver/Inc -I./STM32L4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Bin/Src/stm32l4xx_hal_msp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Bin/Src/stm32l4xx_it.o: ./Core/Src/stm32l4xx_it.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c -I./Core/Inc -I./STM32L4xx_HAL_Driver/Inc -I./STM32L4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Bin/Src/stm32l4xx_it.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Bin/Src/syscalls.o: ./Core/Src/syscalls.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c -I./Core/Inc -I./STM32L4xx_HAL_Driver/Inc -I./STM32L4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Bin/Src/syscalls.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Bin/Src/sysmem.o: ./Core/Src/sysmem.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c -I./Core/Inc -I./STM32L4xx_HAL_Driver/Inc -I./STM32L4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Bin/Src/sysmem.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Bin/Src/system_stm32l4xx.o: ./Core/Src/system_stm32l4xx.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c -I./Core/Inc -I./STM32L4xx_HAL_Driver/Inc -I./STM32L4xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Bin/Src/system_stm32l4xx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
