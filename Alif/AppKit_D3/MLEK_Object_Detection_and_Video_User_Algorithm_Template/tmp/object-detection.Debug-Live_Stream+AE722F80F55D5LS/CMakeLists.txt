cmake_minimum_required(VERSION 3.27)

# Roots
include("../roots.cmake")

set(CONTEXT object-detection.Debug-Live_Stream+AE722F80F55D5LS)
set(TARGET ${CONTEXT})
set(OUT_DIR "${SOLUTION_ROOT}/out/object-detection/AE722F80F55D5LS/Debug-Live_Stream")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(BIN_FILE "object-detection.bin")
set(HEX_FILE "object-detection.hex")
set(LD_MAP_FILE "object-detection.axf.map")
set(LD_SCRIPT "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP/RTE/Device/AE722F80F55D5LS_M55_HP/linker_ac6_mram.sct")
set(LD_SCRIPT_PP ${LD_SCRIPT})

# Processor Options
set(CPU Cortex-M55)
set(FPU DP_FPU)
set(DSP DSP)
set(MVE FP_FVE)
set(BYTE_ORDER Little-endian)

# Toolchain config map
include("toolchain.cmake")

# Setup project
project(${CONTEXT} LANGUAGES CXX C ASM)

# Compilation database
add_custom_target(database
  COMMAND ${CMAKE_COMMAND} -E make_directory "${OUT_DIR}"
  COMMAND ${CMAKE_COMMAND} -E copy_if_different "${CMAKE_CURRENT_BINARY_DIR}/compile_commands.json" "${OUT_DIR}"
)
set(CMAKE_CXX_STANDARD_INCLUDE_DIRECTORIES ${CMAKE_CXX_IMPLICIT_INCLUDE_DIRECTORIES})
set(CMAKE_C_STANDARD_INCLUDE_DIRECTORIES ${CMAKE_C_IMPLICIT_INCLUDE_DIRECTORIES})

# Setup context
add_executable(${CONTEXT})
set_target_properties(${CONTEXT} PROPERTIES PREFIX "" SUFFIX ".axf" OUTPUT_NAME "object-detection")
set_target_properties(${CONTEXT} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OUT_DIR})
add_library(${CONTEXT}_GLOBAL INTERFACE)

# Includes
target_include_directories(${CONTEXT} PUBLIC
  $<$<COMPILE_LANGUAGE:C,CXX>:
    "${SOLUTION_ROOT}/object-detection/include"
    "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP/ConductorTool"
  >
  "${SOLUTION_ROOT}/object-detection/RTE/_Debug-Live_Stream_AE722F80F55D5LS"
  "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP/RTE/Device/AE722F80F55D5LS_M55_HP"
  "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP/RTE/Services/AE722F80F55D5LS_M55_HP"
  "${SOLUTION_ROOT}/object-detection/RTE/CMSIS"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-Compiler/2.1.0/include"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Include"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/PrivateInclude"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Include"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Include"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/Core/Include"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/Driver/Include"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/Driver/VIO/Include"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/Driver/vStream/Include"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/RTOS2/Include"
  "${CMSIS_PACK_ROOT}/ARM/ethos-u-core-driver/1.25.2/ethos_u_core_driver/include"
  "${CMSIS_PACK_ROOT}/ARM/ethos-u-core-driver/1.25.2/ethos_u_core_driver/src"
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/application/api/common/include"
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/application/api/use_case/object_detection/include"
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/log/include"
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/math/include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/core/common/include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/soc/AE722F80F55D5/include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/soc/AE722F80F55D5/include/rtss_hp"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/system/include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/libs/board_config"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/libs/retarget_io/include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/port/include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/templates"
  "${CMSIS_PACK_ROOT}/tensorflow/flatbuffers/1.25.2/src/include"
  "${CMSIS_PACK_ROOT}/tensorflow/gemmlowp/1.25.2/src"
  "${CMSIS_PACK_ROOT}/tensorflow/kissfft/1.25.2/src"
  "${CMSIS_PACK_ROOT}/tensorflow/kissfft/1.25.2/src/tools"
  "${CMSIS_PACK_ROOT}/tensorflow/ruy/1.25.2/src"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/compiler/mlir/lite/core/api"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/compiler/mlir/lite/core/c"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/compiler/mlir/lite/kernels/internal"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/compiler/mlir/lite/schema"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/c"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/core"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/core/api"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/core/c"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels/internal"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels/internal/optimized"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels/internal/reference"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels/internal/reference/integer_ops"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/arena_allocator"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/cortex_m_generic"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/memory_planner"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/testing"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/tflite_bridge"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/schema"
  "${SOLUTION_ROOT}/object-detection/config"
  "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP"
)

# Defines
target_compile_definitions(${CONTEXT} PUBLIC
  $<$<COMPILE_LANGUAGE:C,CXX>:
    ACTIVATION_BUF_SZ=532480
    CMSIS_target_header=\"AppKit-E7-AIML.h\"
    ETHOSU55
    NPU_QCONFIG=1
    NPU_REGIONCFG_0=1
    NPU_REGIONCFG_1=0
    NPU_REGIONCFG_2=1
    AXI_LIMIT0_MEM_TYPE=3
    AXI_LIMIT1_MEM_TYPE=3
    AXI_LIMIT2_MEM_TYPE=3
    AXI_LIMIT3_MEM_TYPE=3
    AE722F80F55D5
    RTSS_HP
    _RTE_
  >
)

# Compile options
target_compile_options(${CONTEXT} PUBLIC
  $<$<COMPILE_LANGUAGE:ASM>:
    "SHELL:${ASM_CPU}"
    "SHELL:${ASM_FLAGS}"
    "SHELL:${ASM_SECURE}"
    "SHELL:${ASM_BYTE_ORDER}"
    "SHELL:-masm=auto"
  >
  $<$<COMPILE_LANGUAGE:C>:
    "SHELL:${CC_CPU}"
    "SHELL:${CC_FLAGS}"
    "SHELL:${CC_SECURE}"
    "SHELL:${CC_BYTE_ORDER}"
    "SHELL:-std=gnu11"
    "SHELL:-Wno-nan-infinity-disabled"
    "SHELL:-Wno-macro-redefined"
    "SHELL:-Wno-pragma-pack"
    "SHELL:-Wno-parentheses-equality"
    "SHELL:-Wno-license-management"
  >
  $<$<COMPILE_LANGUAGE:C,CXX>:
    "SHELL:${_PI}\"${SOLUTION_ROOT}/object-detection/RTE/_Debug-Live_Stream_AE722F80F55D5LS/Pre_Include_Global.h\""
  >
  $<$<COMPILE_LANGUAGE:CXX>:
    "SHELL:${CXX_CPU}"
    "SHELL:${CXX_FLAGS}"
    "SHELL:${CXX_SECURE}"
    "SHELL:${CXX_BYTE_ORDER}"
    "SHELL:-std=c++17"
    "SHELL:-fno-exceptions"
    "SHELL:-fno-rtti"
    "SHELL:-ffp-mode=full"
    "SHELL:-Wno-macro-redefined"
    "SHELL:-Wno-pragma-pack"
    "SHELL:-Wno-parentheses-equality"
    "SHELL:-Wno-license-management"
  >
)

# Compile Options Abstractions
add_library(${CONTEXT}_ABSTRACTIONS INTERFACE)
cbuild_set_options_flags(CXX "debug" "on" "" "" CXX_OPTIONS_FLAGS_${CONTEXT})
cbuild_set_options_flags(CC "debug" "on" "" "" CC_OPTIONS_FLAGS_${CONTEXT})
cbuild_set_options_flags(ASM "debug" "on" "" "" ASM_OPTIONS_FLAGS_${CONTEXT})
target_compile_options(${CONTEXT}_ABSTRACTIONS INTERFACE
  $<$<COMPILE_LANGUAGE:CXX>:
    "SHELL:${CXX_OPTIONS_FLAGS_${CONTEXT}}"
  >
  $<$<COMPILE_LANGUAGE:C>:
    "SHELL:${CC_OPTIONS_FLAGS_${CONTEXT}}"
  >
  $<$<COMPILE_LANGUAGE:ASM>:
    "SHELL:${ASM_OPTIONS_FLAGS_${CONTEXT}}"
  >
)

# Add groups and components
include("groups.cmake")
include("components.cmake")

target_link_libraries(${CONTEXT} PUBLIC
  Group_Application_Main
  Group_Image_Source
  Group_Configuration
  Group_Object_Detection_ML_models
  Group_Board
  Group_Ethos_Interface
  ARM_CMSIS-Compiler_CORE_1_1_0
  ARM_CMSIS-Compiler_STDERR_Custom_1_1_0
  ARM_CMSIS-Compiler_STDIN_Custom_1_1_0
  ARM_CMSIS-Compiler_STDOUT_Custom_1_1_0
  ARM_CMSIS_CORE_6_1_1
  ARM_CMSIS_DSP_Source_0_0_0
  ARM_CMSIS_NN_Lib_7_0_0
  ARM_CMSIS_OS_Tick_SysTick_1_0_5
  ARM_CMSIS_RTOS2_Keil_RTX5_Source_5_9_0
  ARM_ML_Eval_Kit_Common_API_1_0_0
  ARM_ML_Eval_Kit_Common_Log_1_0_0
  ARM_ML_Eval_Kit_Common_Math_1_0_0
  ARM_ML_Eval_Kit_Vision_Object_detection_1_0_0
  ARM_Machine_Learning_NPU_Support_Ethos-U_Driver_Generic_U55_1_25_2
  AlifSemiconductor_BSP_Board_Config_2_0_0
  AlifSemiconductor_BSP_External_peripherals_CAMERA_Sensor_MT9M114_2_0_0
  AlifSemiconductor_BSP_External_peripherals_ILI9806E_LCD_panel_2_0_0
  AlifSemiconductor_CMSIS_Driver_GPIO_1_0_0
  AlifSemiconductor_CMSIS_Driver_I2C_2_0_0
  AlifSemiconductor_CMSIS_Driver_SAI_2_0_0
  AlifSemiconductor_CMSIS_Driver_USART_2_0_0
  AlifSemiconductor_CMSIS_Driver_VIO_Board_AppKit-E7-AIML_1_0_0
  AlifSemiconductor_CMSIS_Driver_vStream_AudioIn_AppKit-E7-AIML_1_0_0
  AlifSemiconductor_CMSIS_Driver_vStream_VideoIn_AppKit-E7-AIML_1_0_0
  AlifSemiconductor_CMSIS_Driver_vStream_VideoOut_AppKit-E7-AIML_1_0_0
  AlifSemiconductor_Device_SOC_Peripherals_CDC_2_0_0
  AlifSemiconductor_Device_SOC_Peripherals_CPI_2_0_0
  AlifSemiconductor_Device_SOC_Peripherals_DMA_2_0_0
  AlifSemiconductor_Device_SOC_Peripherals_GPIO_2_0_0
  AlifSemiconductor_Device_SOC_Peripherals_MHU_1_106_0
  AlifSemiconductor_Device_SOC_Peripherals_MIPI_CSI2_2_0_0
  AlifSemiconductor_Device_SOC_Peripherals_MIPI_DSI_CSI2_DPHY_2_0_0
  AlifSemiconductor_Device_SOC_Peripherals_MIPI_DSI_2_0_0
  AlifSemiconductor_Device_SOC_Peripherals_PINCONF_2_0_0
  AlifSemiconductor_Device_Startup_2_0_0
  AlifSemiconductor_Services_Retarget_IO_STDERR_2_0_0
  AlifSemiconductor_Services_Retarget_IO_STDIN_2_0_0
  AlifSemiconductor_Services_Retarget_IO_STDOUT_2_0_0
  AlifSemiconductor_Services_Secure_Enclave_Initialization_Helper_Source_1_106_0
  AlifSemiconductor_Services_Secure_Enclave_core_Source_1_106_0
  tensorflow_Data_Exchange_Serialization_flatbuffers_tensorflow_1_25_2
  tensorflow_Data_Processing_Math_gemmlowp_fixed-point_tensorflow_1_25_2
  tensorflow_Data_Processing_Math_kissfft_tensorflow_1_25_2
  tensorflow_Data_Processing_Math_ruy_tensorflow_1_25_2
  tensorflow_Machine_Learning_TensorFlow_Kernel_Utils_1_25_2
  tensorflow_Machine_Learning_TensorFlow_Kernel_CMSIS-NN_1_25_2
  tensorflow_Machine_Learning_TensorFlow_Testing_1_25_2
)

# Linker options
target_link_options(${CONTEXT} PUBLIC
  "SHELL:${LD_CPU}"
  "SHELL:${_LS}\"${LD_SCRIPT_PP}\""
  "SHELL:${LD_MAP}"
  "SHELL:${LD_SECURE}"
  "SHELL:--entry=Reset_Handler"
  "SHELL:--map"
  "SHELL:--info summarysizes"
  "SHELL:--summary_stderr"
  "SHELL:--diag_suppress=L6314W"
  "SHELL:--diag_suppress 6312,6329,6848"
)
set_target_properties(${CONTEXT} PROPERTIES LINK_DEPENDS ${LD_SCRIPT})

# Bin Conversion
 add_custom_command(TARGET ${CONTEXT} POST_BUILD COMMAND ${CMAKE_OBJCOPY} ${ELF2BIN})

# Hex Conversion
 add_custom_command(TARGET ${CONTEXT} POST_BUILD COMMAND ${CMAKE_OBJCOPY} ${ELF2HEX})
