################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables
S_SRCS += \
./Bin/Startup/startup_stm32l476rgtx.s

OBJS += \
./Bin/Startup/startup_stm32l476rgtx.o

S_DEPS += \
./Bin/Startup/startup_stm32l476rgtx.d


# Each subdirectory must supply rules for building sources it contributes
Bin/Startup/startup_stm32l476rgtx.o: ./Core/Startup/startup_stm32l476rgtx.s
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Bin/Startup/startup_stm32l476rgtx.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
