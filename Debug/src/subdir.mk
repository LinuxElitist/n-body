################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/nbody.cpp \
../src/render_particles.cpp 

CU_SRCS += \
../src/bodysystemcuda.cu 

CU_DEPS += \
./src/bodysystemcuda.d 

OBJS += \
./src/bodysystemcuda.o \
./src/nbody.o \
./src/render_particles.o 

CPP_DEPS += \
./src/nbody.d \
./src/render_particles.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-8.0/bin/nvcc -I"/home/champ/NVIDIA_GPU_Computing_SDK/projects/5_Simulations" -I"/home/champ/NVIDIA_GPU_Computing_SDK/projects/common/inc" -I"/home/champ/NVIDIA_GPU_Computing_SDK/workspace/nbody_trial" -G -g -O0 -gencode arch=compute_50,code=sm_50  -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-8.0/bin/nvcc -I"/home/champ/NVIDIA_GPU_Computing_SDK/projects/5_Simulations" -I"/home/champ/NVIDIA_GPU_Computing_SDK/projects/common/inc" -I"/home/champ/NVIDIA_GPU_Computing_SDK/workspace/nbody_trial" -G -g -O0 --compile --relocatable-device-code=false -gencode arch=compute_50,code=compute_50 -gencode arch=compute_50,code=sm_50  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-8.0/bin/nvcc -I"/home/champ/NVIDIA_GPU_Computing_SDK/projects/5_Simulations" -I"/home/champ/NVIDIA_GPU_Computing_SDK/projects/common/inc" -I"/home/champ/NVIDIA_GPU_Computing_SDK/workspace/nbody_trial" -G -g -O0 -gencode arch=compute_50,code=sm_50  -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-8.0/bin/nvcc -I"/home/champ/NVIDIA_GPU_Computing_SDK/projects/5_Simulations" -I"/home/champ/NVIDIA_GPU_Computing_SDK/projects/common/inc" -I"/home/champ/NVIDIA_GPU_Computing_SDK/workspace/nbody_trial" -G -g -O0 --compile  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


