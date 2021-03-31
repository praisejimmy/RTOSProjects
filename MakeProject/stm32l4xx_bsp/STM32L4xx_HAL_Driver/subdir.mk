################################################################################
# Subdir makefile for STM32L4xx_HAL_Driver
################################################################################

# Add inputs and outputs from these tool invocations to the build variables
INC += \
	-I./STM32L4xx_HAL_Driver/inc \
	-I./STM32L4xx_HAL_Driver/inc/Legacy \
	-I./CMSIS/Device/ST/STM32L4xx/Include \
	-I./CMSIS/Include

C_SRCS += \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_adc.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_adc_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_can.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_comp.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_cortex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_crc.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_crc_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_cryp.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_cryp_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dac.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dac_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dcmi.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dfsdm.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dfsdm_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dma.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dma_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dma2d.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dsi.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_exti.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_firewall.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_flash.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_flash_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_flash_ramfunc.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_gfxmmu.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_gpio.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_hash.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_hash_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_hcd.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_i2c.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_i2c_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_irda.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_iwdg.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_lcd.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_lptim.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_ltdc.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_ltdc_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_mmc.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_mmc_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_msp_template.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_nand.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_nor.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_opamp.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_opamp_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_ospi.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_pcd.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_pcd_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_pka.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_pssi.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_pwr.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_pwr_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_qspi.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_rcc.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_rcc_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_rng.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_rng_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_rtc.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_rtc_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_sai.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_sai_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_sd.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_sd_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_smartcard.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_smartcard_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_smbus.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_spi.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_spi_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_sram.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_swpmi.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_tim.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_tim_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_tsc.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_uart.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_uart_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_usart.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_usart_ex.c \
./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_wwdg.c

OBJS += \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_adc.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_adc_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_can.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_comp.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_cortex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_crc.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_crc_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_cryp.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_cryp_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dac.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dac_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dcmi.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dfsdm.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dfsdm_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dma.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dma_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dma2d.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dsi.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_exti.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_firewall.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_flash.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_flash_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_flash_ramfunc.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_gfxmmu.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_gpio.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_hash.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_hash_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_hcd.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_i2c.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_i2c_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_irda.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_iwdg.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_lcd.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_lptim.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_ltdc.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_ltdc_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_mmc.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_mmc_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_msp_template.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_nand.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_nor.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_opamp.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_opamp_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_ospi.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pcd.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pcd_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pka.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pssi.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pwr.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pwr_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_qspi.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rcc.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rcc_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rng.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rng_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rtc.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rtc_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sai.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sai_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sd.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sd_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_smartcard.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_smartcard_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_smbus.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_spi.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_spi_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sram.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_swpmi.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_tim.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_tim_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_tsc.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_uart.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_uart_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_usart.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_usart_ex.o \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_wwdg.o


C_DEPS += \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_adc.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_adc_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_can.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_comp.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_cortex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_crc.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_crc_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_cryp.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_cryp_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dac.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dac_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dcmi.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dfsdm.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dfsdm_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dma.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dma_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dma2d.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dsi.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_exti.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_firewall.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_flash.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_flash_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_flash_ramfunc.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_gfxmmu.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_gpio.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_hash.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_hash_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_hcd.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_i2c.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_i2c_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_irda.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_iwdg.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_lcd.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_lptim.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_ltdc.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_ltdc_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_mmc.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_mmc_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_msp_template.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_nand.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_nor.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_opamp.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_opamp_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_ospi.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pcd.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pcd_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pka.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pssi.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pwr.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pwr_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_qspi.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rcc.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rcc_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rng.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rng_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rtc.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rtc_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sai.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sai_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sd.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sd_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_smartcard.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_smartcard_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_smbus.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_spi.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_spi_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sram.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_swpmi.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_tim.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_tim_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_tsc.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_uart.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_uart_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_usart.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_usart_ex.d \
./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_wwdg.d

# Each subdirectory must supply rules for building sources it contributes
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_adc.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_adc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_adc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_adc_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_adc_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_adc_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_can.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_can.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_can.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_comp.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_comp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_comp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_cortex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_cortex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_cortex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_crc.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_crc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_crc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_crc_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_crc_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_crc_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_cryp.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_cryp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_cryp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_cryp_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_cryp_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_cryp_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dac.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dac.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dac.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dac_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dac_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dac_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dcmi.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dcmi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dcmi.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dfsdm.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dfsdm.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dfsdm.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dfsdm_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dfsdm_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dfsdm_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dma.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dma.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dma.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dma_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dma_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dma_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dma2d.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dma2d.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dma2d.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dsi.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_dsi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_dsi.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_exti.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_exti.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_exti.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_firewall.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_firewall.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_firewall.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_flash.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_flash.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_flash.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_flash_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_flash_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_flash_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_flash_ramfunc.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_flash_ramfunc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_flash_ramfunc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_gfxmmu.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_gfxmmu.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_gfxmmu.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_gpio.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_gpio.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_gpio.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_hash.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_hash.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_hash.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_hash_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_hash_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_hash_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_hcd.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_hcd.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_hcd.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_i2c.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_i2c.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_i2c.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_i2c_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_i2c_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_i2c_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_irda.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_irda.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_irda.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_iwdg.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_iwdg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_iwdg.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_lcd.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_lcd.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_lcd.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_lptim.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_lptim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_lptim.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_ltdc.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_ltdc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_ltdc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_ltdc_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_ltdc_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_ltdc_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_mmc.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_mmc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_mmc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_mmc_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_mmc_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_mmc_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_msp_template.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_msp_template.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_msp_template.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_nand.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_nand.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_nand.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_nor.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_nor.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_nor.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_opamp.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_opamp.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_opamp.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_opamp_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_opamp_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_opamp_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_ospi.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_ospi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_ospi.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pcd.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_pcd.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pcd.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pcd_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_pcd_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pcd_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pka.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_pka.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pka.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pssi.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_pssi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pssi.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pwr.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_pwr.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pwr.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pwr_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_pwr_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_pwr_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_qspi.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_qspi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_qspi.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rcc.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_rcc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rcc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rcc_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_rcc_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rcc_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rng.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_rng.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rng.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rng_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_rng_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rng_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rtc.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_rtc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rtc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rtc_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_rtc_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_rtc_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sai.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_sai.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sai.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sai_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_sai_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sai_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sd.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_sd.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sd.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sd_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_sd_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sd_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_smartcard.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_smartcard.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_smartcard.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_smartcard_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_smartcard_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_smartcard_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_smbus.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_smbus.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_smbus.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_spi.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_spi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_spi.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_spi_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_spi_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_spi_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sram.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_sram.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_sram.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_swpmi.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_swpmi.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_swpmi.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_tim.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_tim.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_tim.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_tim_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_tim_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_tim_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_tsc.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_tsc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_tsc.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_uart.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_uart.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_uart.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_uart_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_uart_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_uart_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_usart.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_usart.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_usart.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_usart_ex.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_usart_ex.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_usart_ex.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_wwdg.o: ./STM32L4xx_HAL_Driver/src/stm32l4xx_hal_wwdg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32L476xx -DDEBUG -c $(INC) -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"./STM32L4xx_HAL_Driver/bin/stm32l4xx_hal_wwdg.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
