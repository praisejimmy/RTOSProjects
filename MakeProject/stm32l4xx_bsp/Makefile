################################################################################
# STM32L4xx BSP make
################################################################################

RM := rm -rf

default: all

include sources.mk
include STM32L4xx_HAL_Driver/subdir.mk
include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

all: STM32Lib

clean:
	$(RM) STM32L4xx_HAL_Driver/bin/*
	$(RM) STM32L4xx_HAL_Driver/lib/*

STM32Lib: $(OBJS) $(USER_OBJS)
	arm-none-eabi-ar -rc STM32L4xx_HAL_Driver/lib/libstm32l4xx_hal_adc.a STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_adc.o
	arm-none-eabi-ar -rc STM32L4xx_HAL_Driver/lib/libstm32.a $(USER_OBJS) $(LIBS) @"objects.list"
	@echo 'Finished building target: $@'
	@echo ' '
