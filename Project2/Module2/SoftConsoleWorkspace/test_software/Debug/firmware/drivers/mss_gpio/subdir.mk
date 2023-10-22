################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../firmware/drivers/mss_gpio/mss_gpio.c 

OBJS += \
./firmware/drivers/mss_gpio/mss_gpio.o 

C_DEPS += \
./firmware/drivers/mss_gpio/mss_gpio.d 


# Each subdirectory must supply rules for building sources it contributes
firmware/drivers/mss_gpio/%.o: ../firmware/drivers/mss_gpio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"D:\Microsemi\SoftConsole_v5.1\CMSIS\V4.5\Include" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


