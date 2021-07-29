################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../source/OneHot.s \
../source/PinInit.s \
../source/bounce.s \
../source/if.s \
../source/jhonson.s 

C_SRCS += \
../source/Practica3Ciclos.c \
../source/mtb.c \
../source/semihost_hardfault.c 

OBJS += \
./source/OneHot.o \
./source/PinInit.o \
./source/Practica3Ciclos.o \
./source/bounce.o \
./source/if.o \
./source/jhonson.o \
./source/mtb.o \
./source/semihost_hardfault.o 

C_DEPS += \
./source/Practica3Ciclos.d \
./source/mtb.d \
./source/semihost_hardfault.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -I"D:\MCUWorkspace\Practica3Ciclos\board" -I"D:\MCUWorkspace\Practica3Ciclos\source" -I"D:\MCUWorkspace\Practica3Ciclos" -I"D:\MCUWorkspace\Practica3Ciclos\startup" -I"D:\MCUWorkspace\Practica3Ciclos\CMSIS" -I"D:\MCUWorkspace\Practica3Ciclos\drivers" -I"D:\MCUWorkspace\Practica3Ciclos\utilities" -g3 -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_MKL25Z128VLK4_cm0plus -DCPU_MKL25Z128VLK4 -DSDK_OS_BAREMETAL -DFSL_RTOS_BM -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\MCUWorkspace\Practica3Ciclos\board" -I"D:\MCUWorkspace\Practica3Ciclos\source" -I"D:\MCUWorkspace\Practica3Ciclos" -I"D:\MCUWorkspace\Practica3Ciclos\startup" -I"D:\MCUWorkspace\Practica3Ciclos\CMSIS" -I"D:\MCUWorkspace\Practica3Ciclos\drivers" -I"D:\MCUWorkspace\Practica3Ciclos\utilities" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


