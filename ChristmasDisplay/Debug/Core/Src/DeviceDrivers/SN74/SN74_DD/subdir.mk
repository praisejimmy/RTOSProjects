################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/DeviceDrivers/SN74/SN74_DD/sn74_dd.c 

OBJS += \
./Core/Src/DeviceDrivers/SN74/SN74_DD/sn74_dd.o 

C_DEPS += \
./Core/Src/DeviceDrivers/SN74/SN74_DD/sn74_dd.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/DeviceDrivers/SN74/SN74_DD/sn74_dd.o: ../Core/Src/DeviceDrivers/SN74/SN74_DD/sn74_dd.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F302x8 -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Core/Src/DeviceDrivers/SN74/SN74_API -I../Core/Src/DeviceDrivers/SN74/SN74_DD -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Core/Src/DeviceDrivers/SN74/SN74_DD/sn74_dd.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

