################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/Assignment-7-Waveforms.c \
../source/autocorrelate.c \
../source/mtb.c \
../source/semihost_hardfault.c \
../source/test_sine.c 

C_DEPS += \
./source/Assignment-7-Waveforms.d \
./source/autocorrelate.d \
./source/mtb.d \
./source/semihost_hardfault.d \
./source/test_sine.d 

OBJS += \
./source/Assignment-7-Waveforms.o \
./source/autocorrelate.o \
./source/mtb.o \
./source/semihost_hardfault.o \
./source/test_sine.o 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DCPU_MKL25Z128VLK4 -DCPU_MKL25Z128VLK4_cm0plus -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\lpandit\Desktop\projects\ECEN5813\Assignment-7-Waveforms\board" -I"C:\Users\lpandit\Desktop\projects\ECEN5813\Assignment-7-Waveforms\source" -I"C:\Users\lpandit\Desktop\projects\ECEN5813\Assignment-7-Waveforms" -I"C:\Users\lpandit\Desktop\projects\ECEN5813\Assignment-7-Waveforms\drivers" -I"C:\Users\lpandit\Desktop\projects\ECEN5813\Assignment-7-Waveforms\CMSIS" -I"C:\Users\lpandit\Desktop\projects\ECEN5813\Assignment-7-Waveforms\utilities" -I"C:\Users\lpandit\Desktop\projects\ECEN5813\Assignment-7-Waveforms\startup" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-source

clean-source:
	-$(RM) ./source/Assignment-7-Waveforms.d ./source/Assignment-7-Waveforms.o ./source/autocorrelate.d ./source/autocorrelate.o ./source/mtb.d ./source/mtb.o ./source/semihost_hardfault.d ./source/semihost_hardfault.o ./source/test_sine.d ./source/test_sine.o

.PHONY: clean-source

