################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../firmware/hal/CortexM3/cortex_nvic.c 

OBJS += \
./firmware/hal/CortexM3/cortex_nvic.o 

C_DEPS += \
./firmware/hal/CortexM3/cortex_nvic.d 


# Each subdirectory must supply rules for building sources it contributes
firmware/hal/CortexM3/%.o: ../firmware/hal/CortexM3/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -I"D:\Microsemi\SoftConsole_v5.1\CMSIS\V4.5\Include" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


