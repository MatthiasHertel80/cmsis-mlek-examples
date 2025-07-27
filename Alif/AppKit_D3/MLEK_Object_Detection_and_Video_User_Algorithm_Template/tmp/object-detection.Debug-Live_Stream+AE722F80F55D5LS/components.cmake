# components.cmake

# component ARM::CMSIS-Compiler:CORE@1.1.0
add_library(ARM_CMSIS-Compiler_CORE_1_1_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-Compiler/2.1.0/source/armcc/retarget_io.c"
)
target_include_directories(ARM_CMSIS-Compiler_CORE_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(ARM_CMSIS-Compiler_CORE_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_CMSIS-Compiler_CORE_1_1_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_CMSIS-Compiler_CORE_1_1_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::CMSIS-Compiler:STDERR:Custom@1.1.0
add_library(ARM_CMSIS-Compiler_STDERR_Custom_1_1_0 INTERFACE)
target_include_directories(ARM_CMSIS-Compiler_STDERR_Custom_1_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-Compiler/2.1.0/include"
)
target_compile_definitions(ARM_CMSIS-Compiler_STDERR_Custom_1_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_link_libraries(ARM_CMSIS-Compiler_STDERR_Custom_1_1_0 INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::CMSIS-Compiler:STDIN:Custom@1.1.0
add_library(ARM_CMSIS-Compiler_STDIN_Custom_1_1_0 INTERFACE)
target_include_directories(ARM_CMSIS-Compiler_STDIN_Custom_1_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-Compiler/2.1.0/include"
)
target_compile_definitions(ARM_CMSIS-Compiler_STDIN_Custom_1_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_link_libraries(ARM_CMSIS-Compiler_STDIN_Custom_1_1_0 INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::CMSIS-Compiler:STDOUT:Custom@1.1.0
add_library(ARM_CMSIS-Compiler_STDOUT_Custom_1_1_0 INTERFACE)
target_include_directories(ARM_CMSIS-Compiler_STDOUT_Custom_1_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-Compiler/2.1.0/include"
)
target_compile_definitions(ARM_CMSIS-Compiler_STDOUT_Custom_1_1_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_link_libraries(ARM_CMSIS-Compiler_STDOUT_Custom_1_1_0 INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::CMSIS:CORE@6.1.1
add_library(ARM_CMSIS_CORE_6_1_1 INTERFACE)
target_include_directories(ARM_CMSIS_CORE_6_1_1 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/Core/Include"
)
target_compile_definitions(ARM_CMSIS_CORE_6_1_1 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_link_libraries(ARM_CMSIS_CORE_6_1_1 INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::CMSIS:DSP&Source@0.0.0
add_library(ARM_CMSIS_DSP_Source_0_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/BasicMathFunctions/BasicMathFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/BasicMathFunctions/BasicMathFunctionsF16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/BayesFunctions/BayesFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/BayesFunctions/BayesFunctionsF16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/CommonTables/CommonTables.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/CommonTables/CommonTablesF16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/ComplexMathFunctions/ComplexMathFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/ComplexMathFunctions/ComplexMathFunctionsF16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/ControllerFunctions/ControllerFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/DistanceFunctions/DistanceFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/DistanceFunctions/DistanceFunctionsF16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/FastMathFunctions/FastMathFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/FastMathFunctions/FastMathFunctionsF16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/FilteringFunctions/FilteringFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/FilteringFunctions/FilteringFunctionsF16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/InterpolationFunctions/InterpolationFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/InterpolationFunctions/InterpolationFunctionsF16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/MatrixFunctions/MatrixFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/MatrixFunctions/MatrixFunctionsF16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/QuaternionMathFunctions/QuaternionMathFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/SVMFunctions/SVMFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/SVMFunctions/SVMFunctionsF16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/StatisticsFunctions/StatisticsFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/StatisticsFunctions/StatisticsFunctionsF16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/SupportFunctions/SupportFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/SupportFunctions/SupportFunctionsF16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/TransformFunctions/TransformFunctions.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/TransformFunctions/TransformFunctionsF16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Source/WindowFunctions/WindowFunctions.c"
)
target_include_directories(ARM_CMSIS_DSP_Source_0_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/Include"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-DSP/1.16.0/PrivateInclude"
)
target_compile_definitions(ARM_CMSIS_DSP_Source_0_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_CMSIS_DSP_Source_0_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_CMSIS_DSP_Source_0_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::CMSIS:NN Lib@7.0.0
add_library(ARM_CMSIS_NN_Lib_7_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ActivationFunctions/arm_nn_activation_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ActivationFunctions/arm_relu6_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ActivationFunctions/arm_relu_q15.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ActivationFunctions/arm_relu_q7.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/BasicMathFunctions/arm_elementwise_add_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/BasicMathFunctions/arm_elementwise_add_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/BasicMathFunctions/arm_elementwise_mul_acc_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/BasicMathFunctions/arm_elementwise_mul_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/BasicMathFunctions/arm_elementwise_mul_s16_batch_offset.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/BasicMathFunctions/arm_elementwise_mul_s16_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/BasicMathFunctions/arm_elementwise_mul_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/BasicMathFunctions/arm_maximum_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/BasicMathFunctions/arm_minimum_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConcatenationFunctions/arm_concatenation_s8_w.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConcatenationFunctions/arm_concatenation_s8_x.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConcatenationFunctions/arm_concatenation_s8_y.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConcatenationFunctions/arm_concatenation_s8_z.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_1_x_n_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_1_x_n_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_1x1_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_1x1_s4_fast.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_1x1_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_1x1_s8_fast.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_even_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_get_buffer_sizes_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_wrapper_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_wrapper_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_convolve_wrapper_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_depthwise_conv_3x3_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_depthwise_conv_fast_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_depthwise_conv_get_buffer_sizes_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_depthwise_conv_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_depthwise_conv_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_depthwise_conv_s4_opt.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_depthwise_conv_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_depthwise_conv_s8_opt.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_depthwise_conv_wrapper_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_nn_depthwise_conv_s8_core.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_row_offset_s8_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s4_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_nn_mat_mult_kernel_s8_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_nn_mat_mult_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_transpose_conv_get_buffer_sizes_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_transpose_conv_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ConvolutionFunctions/arm_transpose_conv_wrapper_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/FullyConnectedFunctions/arm_batch_matmul_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/FullyConnectedFunctions/arm_batch_matmul_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/FullyConnectedFunctions/arm_fully_connected_get_buffer_sizes_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/FullyConnectedFunctions/arm_fully_connected_per_channel_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/FullyConnectedFunctions/arm_fully_connected_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/FullyConnectedFunctions/arm_fully_connected_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/FullyConnectedFunctions/arm_fully_connected_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/FullyConnectedFunctions/arm_fully_connected_wrapper_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/FullyConnectedFunctions/arm_vector_sum_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/FullyConnectedFunctions/arm_vector_sum_s8_s64.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/LSTMFunctions/arm_lstm_unidirectional_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/LSTMFunctions/arm_lstm_unidirectional_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_padded_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_depthwise_conv_nt_t_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_lstm_calculate_gate_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_lstm_calculate_gate_s8_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_lstm_step_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_lstm_step_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_mat_mul_core_1x_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_mat_mul_core_4x_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_mat_mult_nt_interleaved_t_even_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_mat_mult_nt_t_s8_s32.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_transpose_conv_row_s8_s32.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_vec_mat_mul_result_acc_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_vec_mat_mul_result_acc_s8_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_per_ch_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s16_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s4.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nn_vec_mat_mult_t_svdf_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_nntables.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_q7_to_q15_with_offset.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/NNSupportFunctions/arm_s8_to_s16_unordered_with_offset.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/PadFunctions/arm_pad_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/PoolingFunctions/arm_avgpool_get_buffer_sizes_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/PoolingFunctions/arm_avgpool_get_buffer_sizes_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/PoolingFunctions/arm_avgpool_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/PoolingFunctions/arm_avgpool_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/PoolingFunctions/arm_max_pool_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/PoolingFunctions/arm_max_pool_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/ReshapeFunctions/arm_reshape_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/SVDFunctions/arm_svdf_get_buffer_sizes_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/SVDFunctions/arm_svdf_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/SVDFunctions/arm_svdf_state_s16_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/SoftmaxFunctions/arm_nn_softmax_common_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/SoftmaxFunctions/arm_softmax_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/SoftmaxFunctions/arm_softmax_s8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/SoftmaxFunctions/arm_softmax_s8_s16.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/SoftmaxFunctions/arm_softmax_u8.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Source/TransposeFunctions/arm_transpose_s8.c"
)
target_include_directories(ARM_CMSIS_NN_Lib_7_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-NN/7.0.0/Include"
)
target_compile_definitions(ARM_CMSIS_NN_Lib_7_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_CMSIS_NN_Lib_7_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_CMSIS_NN_Lib_7_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::CMSIS:OS Tick:SysTick@1.0.5
add_library(ARM_CMSIS_OS_Tick_SysTick_1_0_5 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/RTOS2/Source/os_systick.c"
)
target_include_directories(ARM_CMSIS_OS_Tick_SysTick_1_0_5 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/RTOS2/Include"
)
target_compile_definitions(ARM_CMSIS_OS_Tick_SysTick_1_0_5 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_CMSIS_OS_Tick_SysTick_1_0_5 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_CMSIS_OS_Tick_SysTick_1_0_5 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::CMSIS:RTOS2:Keil RTX5&Source@5.9.0
add_library(ARM_CMSIS_RTOS2_Keil_RTX5_Source_5_9_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/GCC/irq_armv8mml.S"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_delay.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_evflags.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_evr.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_kernel.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_lib.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_memory.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_mempool.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_msgqueue.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_mutex.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_semaphore.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_system.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_thread.c"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/rtx_timer.c"
  "${SOLUTION_ROOT}/object-detection/RTE/CMSIS/RTX_Config.c"
)
target_include_directories(ARM_CMSIS_RTOS2_Keil_RTX5_Source_5_9_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${SOLUTION_ROOT}/object-detection/RTE/CMSIS"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Include"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/RTOS2/Include"
)
target_compile_definitions(ARM_CMSIS_RTOS2_Keil_RTX5_Source_5_9_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_CMSIS_RTOS2_Keil_RTX5_Source_5_9_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_CMSIS_RTOS2_Keil_RTX5_Source_5_9_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)
set_source_files_properties("${CMSIS_PACK_ROOT}/ARM/CMSIS-RTX/5.9.0/Source/GCC/irq_armv8mml.S" PROPERTIES
  COMPILE_DEFINITIONS "AE722F80F55D5;RTSS_HP;_RTE_"
)

# component ARM::ML Eval Kit:Common:API@1.0.0
add_library(ARM_ML_Eval_Kit_Common_API_1_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/application/api/common/source/Classifier.cc"
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/application/api/common/source/ImageUtils.cc"
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/application/api/common/source/Mfcc.cc"
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/application/api/common/source/Model.cc"
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/application/api/common/source/TensorFlowLiteMicro.cc"
)
target_include_directories(ARM_ML_Eval_Kit_Common_API_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/application/api/common/include"
)
target_compile_definitions(ARM_ML_Eval_Kit_Common_API_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_ML_Eval_Kit_Common_API_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_ML_Eval_Kit_Common_API_1_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::ML Eval Kit:Common:Log@1.0.0
add_library(ARM_ML_Eval_Kit_Common_Log_1_0_0 INTERFACE)
target_include_directories(ARM_ML_Eval_Kit_Common_Log_1_0_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/log/include"
)
target_compile_definitions(ARM_ML_Eval_Kit_Common_Log_1_0_0 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_link_libraries(ARM_ML_Eval_Kit_Common_Log_1_0_0 INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::ML Eval Kit:Common:Math@1.0.0
add_library(ARM_ML_Eval_Kit_Common_Math_1_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/math/PlatformMath.cc"
)
target_include_directories(ARM_ML_Eval_Kit_Common_Math_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/log/include"
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/math/include"
)
target_compile_definitions(ARM_ML_Eval_Kit_Common_Math_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_ML_Eval_Kit_Common_Math_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_ML_Eval_Kit_Common_Math_1_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::ML Eval Kit:Vision:Object detection@1.0.0
add_library(ARM_ML_Eval_Kit_Vision_Object_detection_1_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/application/api/use_case/object_detection/src/DetectorPostProcessing.cc"
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/application/api/use_case/object_detection/src/DetectorPreProcessing.cc"
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/application/api/use_case/object_detection/src/YoloFastestModel.cc"
)
target_include_directories(ARM_ML_Eval_Kit_Vision_Object_detection_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/ml-embedded-eval-kit-uc-api/24.8.0/source/application/api/use_case/object_detection/include"
)
target_compile_definitions(ARM_ML_Eval_Kit_Vision_Object_detection_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_ML_Eval_Kit_Vision_Object_detection_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_ML_Eval_Kit_Vision_Object_detection_1_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component ARM::Machine Learning:NPU Support:Ethos-U Driver&Generic U55@1.25.2
add_library(ARM_Machine_Learning_NPU_Support_Ethos-U_Driver_Generic_U55_1_25_2 OBJECT
  "${CMSIS_PACK_ROOT}/ARM/ethos-u-core-driver/1.25.2/ethos_u_core_driver/src/ethosu_device_u55_u65.c"
  "${CMSIS_PACK_ROOT}/ARM/ethos-u-core-driver/1.25.2/ethos_u_core_driver/src/ethosu_driver.c"
  "${CMSIS_PACK_ROOT}/ARM/ethos-u-core-driver/1.25.2/ethos_u_core_driver/src/ethosu_pmu.c"
)
target_include_directories(ARM_Machine_Learning_NPU_Support_Ethos-U_Driver_Generic_U55_1_25_2 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/ethos-u-core-driver/1.25.2/ethos_u_core_driver/include"
  "${CMSIS_PACK_ROOT}/ARM/ethos-u-core-driver/1.25.2/ethos_u_core_driver/src"
)
target_compile_definitions(ARM_Machine_Learning_NPU_Support_Ethos-U_Driver_Generic_U55_1_25_2 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(ARM_Machine_Learning_NPU_Support_Ethos-U_Driver_Generic_U55_1_25_2 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(ARM_Machine_Learning_NPU_Support_Ethos-U_Driver_Generic_U55_1_25_2 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::BSP:Board Config@2.0.0
add_library(AlifSemiconductor_BSP_Board_Config_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/libs/board_config/board_config.c"
)
target_include_directories(AlifSemiconductor_BSP_Board_Config_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/libs/board_config"
)
target_compile_definitions(AlifSemiconductor_BSP_Board_Config_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_BSP_Board_Config_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_BSP_Board_Config_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::BSP:External peripherals:CAMERA Sensor MT9M114@2.0.0
add_library(AlifSemiconductor_BSP_External_peripherals_CAMERA_Sensor_MT9M114_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/components/Source/MT9M114_Camera_Sensor.c"
)
target_include_directories(AlifSemiconductor_BSP_External_peripherals_CAMERA_Sensor_MT9M114_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(AlifSemiconductor_BSP_External_peripherals_CAMERA_Sensor_MT9M114_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_BSP_External_peripherals_CAMERA_Sensor_MT9M114_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_BSP_External_peripherals_CAMERA_Sensor_MT9M114_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::BSP:External peripherals:ILI9806E LCD panel@2.0.0
add_library(AlifSemiconductor_BSP_External_peripherals_ILI9806E_LCD_panel_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/components/Source/ILI9806E_LCD_panel.c"
)
target_include_directories(AlifSemiconductor_BSP_External_peripherals_ILI9806E_LCD_panel_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(AlifSemiconductor_BSP_External_peripherals_ILI9806E_LCD_panel_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_BSP_External_peripherals_ILI9806E_LCD_panel_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_BSP_External_peripherals_ILI9806E_LCD_panel_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::CMSIS Driver:GPIO@1.0.0
add_library(AlifSemiconductor_CMSIS_Driver_GPIO_1_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/Driver_GPIO.c"
)
target_include_directories(AlifSemiconductor_CMSIS_Driver_GPIO_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/Driver/Include"
)
target_compile_definitions(AlifSemiconductor_CMSIS_Driver_GPIO_1_0_0 PUBLIC
  $<$<COMPILE_LANGUAGE:C,CXX>:
    CMSIS_GPIO_DISABLE_EVENTS
  >
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_CMSIS_Driver_GPIO_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_CMSIS_Driver_GPIO_1_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::CMSIS Driver:I2C@2.0.0
add_library(AlifSemiconductor_CMSIS_Driver_I2C_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/Driver_I2C.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/source/i2c.c"
)
target_include_directories(AlifSemiconductor_CMSIS_Driver_I2C_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/include"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/Driver/Include"
)
target_compile_definitions(AlifSemiconductor_CMSIS_Driver_I2C_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_CMSIS_Driver_I2C_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_CMSIS_Driver_I2C_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::CMSIS Driver:SAI@2.0.0
add_library(AlifSemiconductor_CMSIS_Driver_SAI_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/Driver_I2S.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/source/i2s.c"
)
target_include_directories(AlifSemiconductor_CMSIS_Driver_SAI_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/include"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/Driver/Include"
)
target_compile_definitions(AlifSemiconductor_CMSIS_Driver_SAI_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_CMSIS_Driver_SAI_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_CMSIS_Driver_SAI_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::CMSIS Driver:USART@2.0.0
add_library(AlifSemiconductor_CMSIS_Driver_USART_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/Driver_USART.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/source/uart.c"
)
target_include_directories(AlifSemiconductor_CMSIS_Driver_USART_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/include"
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/Driver/Include"
)
target_compile_definitions(AlifSemiconductor_CMSIS_Driver_USART_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_CMSIS_Driver_USART_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_CMSIS_Driver_USART_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::CMSIS Driver:VIO:Board&AppKit-E7-AIML@1.0.0
add_library(AlifSemiconductor_CMSIS_Driver_VIO_Board_AppKit-E7-AIML_1_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Boards/AppKit-e7-aiml/Drivers/vio_AppKit-E7-AIML.c"
)
target_include_directories(AlifSemiconductor_CMSIS_Driver_VIO_Board_AppKit-E7-AIML_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/Driver/VIO/Include"
)
target_compile_definitions(AlifSemiconductor_CMSIS_Driver_VIO_Board_AppKit-E7-AIML_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_CMSIS_Driver_VIO_Board_AppKit-E7-AIML_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_CMSIS_Driver_VIO_Board_AppKit-E7-AIML_1_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::CMSIS Driver:vStream:AudioIn&AppKit-E7-AIML@1.0.0
add_library(AlifSemiconductor_CMSIS_Driver_vStream_AudioIn_AppKit-E7-AIML_1_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Boards/AppKit-e7-aiml/Drivers/vstream_audio_in.c"
)
target_include_directories(AlifSemiconductor_CMSIS_Driver_vStream_AudioIn_AppKit-E7-AIML_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/Driver/vStream/Include"
)
target_compile_definitions(AlifSemiconductor_CMSIS_Driver_vStream_AudioIn_AppKit-E7-AIML_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_CMSIS_Driver_vStream_AudioIn_AppKit-E7-AIML_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_CMSIS_Driver_vStream_AudioIn_AppKit-E7-AIML_1_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::CMSIS Driver:vStream:VideoIn&AppKit-E7-AIML@1.0.0
add_library(AlifSemiconductor_CMSIS_Driver_vStream_VideoIn_AppKit-E7-AIML_1_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Boards/AppKit-e7-aiml/Drivers/vstream_video_in.c"
)
target_include_directories(AlifSemiconductor_CMSIS_Driver_vStream_VideoIn_AppKit-E7-AIML_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/Driver/vStream/Include"
)
target_compile_definitions(AlifSemiconductor_CMSIS_Driver_vStream_VideoIn_AppKit-E7-AIML_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_CMSIS_Driver_vStream_VideoIn_AppKit-E7-AIML_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_CMSIS_Driver_vStream_VideoIn_AppKit-E7-AIML_1_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::CMSIS Driver:vStream:VideoOut&AppKit-E7-AIML@1.0.0
add_library(AlifSemiconductor_CMSIS_Driver_vStream_VideoOut_AppKit-E7-AIML_1_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Boards/AppKit-e7-aiml/Drivers/vstream_video_out.c"
)
target_include_directories(AlifSemiconductor_CMSIS_Driver_vStream_VideoOut_AppKit-E7-AIML_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/ARM/CMSIS/6.2.0/CMSIS/Driver/vStream/Include"
)
target_compile_definitions(AlifSemiconductor_CMSIS_Driver_vStream_VideoOut_AppKit-E7-AIML_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_CMSIS_Driver_vStream_VideoOut_AppKit-E7-AIML_1_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_CMSIS_Driver_vStream_VideoOut_AppKit-E7-AIML_1_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Device:SOC Peripherals:CDC@2.0.0
add_library(AlifSemiconductor_Device_SOC_Peripherals_CDC_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/Driver_CDC200.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/source/cdc.c"
)
target_include_directories(AlifSemiconductor_Device_SOC_Peripherals_CDC_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/include"
)
target_compile_definitions(AlifSemiconductor_Device_SOC_Peripherals_CDC_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Device_SOC_Peripherals_CDC_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Device_SOC_Peripherals_CDC_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Device:SOC Peripherals:CPI@2.0.0
add_library(AlifSemiconductor_Device_SOC_Peripherals_CPI_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/Camera_Sensor_i2c.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/Driver_CPI.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/source/cpi.c"
)
target_include_directories(AlifSemiconductor_Device_SOC_Peripherals_CPI_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/include"
)
target_compile_definitions(AlifSemiconductor_Device_SOC_Peripherals_CPI_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Device_SOC_Peripherals_CPI_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Device_SOC_Peripherals_CPI_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Device:SOC Peripherals:DMA@2.0.0
add_library(AlifSemiconductor_Device_SOC_Peripherals_DMA_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/Driver_DMA.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/source/dma_ctrl.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/source/dma_op.c"
)
target_include_directories(AlifSemiconductor_Device_SOC_Peripherals_DMA_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP/RTE/Device/AE722F80F55D5LS_M55_HP"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/include"
)
target_compile_definitions(AlifSemiconductor_Device_SOC_Peripherals_DMA_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Device_SOC_Peripherals_DMA_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Device_SOC_Peripherals_DMA_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Device:SOC Peripherals:GPIO@2.0.0
add_library(AlifSemiconductor_Device_SOC_Peripherals_GPIO_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/Driver_IO_Private.h"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/Driver_IO.c"
)
target_include_directories(AlifSemiconductor_Device_SOC_Peripherals_GPIO_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/include"
)
target_compile_definitions(AlifSemiconductor_Device_SOC_Peripherals_GPIO_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Device_SOC_Peripherals_GPIO_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Device_SOC_Peripherals_GPIO_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Device:SOC Peripherals:MHU@1.106.0
add_library(AlifSemiconductor_Device_SOC_Peripherals_MHU_1_106_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/source/mhu_driver.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/source/mhu_receiver.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/source/mhu_sender.c"
)
target_include_directories(AlifSemiconductor_Device_SOC_Peripherals_MHU_1_106_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/include"
)
target_compile_definitions(AlifSemiconductor_Device_SOC_Peripherals_MHU_1_106_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Device_SOC_Peripherals_MHU_1_106_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Device_SOC_Peripherals_MHU_1_106_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Device:SOC Peripherals:MIPI CSI2@2.0.0
add_library(AlifSemiconductor_Device_SOC_Peripherals_MIPI_CSI2_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/DPHY_CSI2.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/Driver_MIPI_CSI2.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/source/csi.c"
)
target_include_directories(AlifSemiconductor_Device_SOC_Peripherals_MIPI_CSI2_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/include"
)
target_compile_definitions(AlifSemiconductor_Device_SOC_Peripherals_MIPI_CSI2_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Device_SOC_Peripherals_MIPI_CSI2_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Device_SOC_Peripherals_MIPI_CSI2_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Device:SOC Peripherals:MIPI DSI CSI2 DPHY@2.0.0
add_library(AlifSemiconductor_Device_SOC_Peripherals_MIPI_DSI_CSI2_DPHY_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/DPHY_Common.c"
)
target_include_directories(AlifSemiconductor_Device_SOC_Peripherals_MIPI_DSI_CSI2_DPHY_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/include"
)
target_compile_definitions(AlifSemiconductor_Device_SOC_Peripherals_MIPI_DSI_CSI2_DPHY_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Device_SOC_Peripherals_MIPI_DSI_CSI2_DPHY_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Device_SOC_Peripherals_MIPI_DSI_CSI2_DPHY_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Device:SOC Peripherals:MIPI DSI@2.0.0
add_library(AlifSemiconductor_Device_SOC_Peripherals_MIPI_DSI_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/DPHY_DSI.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source/Driver_MIPI_DSI.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/source/dsi.c"
)
target_include_directories(AlifSemiconductor_Device_SOC_Peripherals_MIPI_DSI_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Alif_CMSIS/Source"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/include"
)
target_compile_definitions(AlifSemiconductor_Device_SOC_Peripherals_MIPI_DSI_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Device_SOC_Peripherals_MIPI_DSI_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Device_SOC_Peripherals_MIPI_DSI_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Device:SOC Peripherals:PINCONF@2.0.0
add_library(AlifSemiconductor_Device_SOC_Peripherals_PINCONF_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/source/pinconf.c"
)
target_include_directories(AlifSemiconductor_Device_SOC_Peripherals_PINCONF_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/drivers/include"
)
target_compile_definitions(AlifSemiconductor_Device_SOC_Peripherals_PINCONF_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Device_SOC_Peripherals_PINCONF_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Device_SOC_Peripherals_PINCONF_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Device:Startup@2.0.0
add_library(AlifSemiconductor_Device_Startup_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/core/common/source/cache.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/core/common/source/mpu.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/core/common/source/pm.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/core/common/source/sau_tcm_ns_setup.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/core/common/source/startup.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/core/common/source/system.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/core/common/source/tgu.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/core/common/source/vectors.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/system/source/sys_clocks.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/system/source/sys_utils.c"
)
target_include_directories(AlifSemiconductor_Device_Startup_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP/RTE/Device/AE722F80F55D5LS_M55_HP"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/core/common/include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/soc/AE722F80F55D5/include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/soc/AE722F80F55D5/include/rtss_hp"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/Device/system/include"
)
target_compile_definitions(AlifSemiconductor_Device_Startup_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Device_Startup_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Device_Startup_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Services:Retarget IO:STDERR@2.0.0
add_library(AlifSemiconductor_Services_Retarget_IO_STDERR_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/libs/retarget_io/source/stderr_USART.c"
)
target_include_directories(AlifSemiconductor_Services_Retarget_IO_STDERR_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/libs/retarget_io/include"
)
target_compile_definitions(AlifSemiconductor_Services_Retarget_IO_STDERR_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Services_Retarget_IO_STDERR_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Services_Retarget_IO_STDERR_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Services:Retarget IO:STDIN@2.0.0
add_library(AlifSemiconductor_Services_Retarget_IO_STDIN_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/libs/retarget_io/source/stdin_USART.c"
)
target_include_directories(AlifSemiconductor_Services_Retarget_IO_STDIN_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/libs/retarget_io/include"
)
target_compile_definitions(AlifSemiconductor_Services_Retarget_IO_STDIN_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Services_Retarget_IO_STDIN_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Services_Retarget_IO_STDIN_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Services:Retarget IO:STDOUT@2.0.0
add_library(AlifSemiconductor_Services_Retarget_IO_STDOUT_2_0_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/libs/retarget_io/source/stdout_USART.c"
)
target_include_directories(AlifSemiconductor_Services_Retarget_IO_STDOUT_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP/RTE/Services/AE722F80F55D5LS_M55_HP"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/libs/retarget_io/include"
)
target_compile_definitions(AlifSemiconductor_Services_Retarget_IO_STDOUT_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Services_Retarget_IO_STDOUT_2_0_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Services_Retarget_IO_STDOUT_2_0_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Services:Secure Enclave:Initialization Helper&Source@1.106.0
add_library(AlifSemiconductor_Services_Secure_Enclave_Initialization_Helper_Source_1_106_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/port/clock_runtime.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/port/se_services_port.c"
)
target_include_directories(AlifSemiconductor_Services_Secure_Enclave_Initialization_Helper_Source_1_106_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/port/include"
)
target_compile_definitions(AlifSemiconductor_Services_Secure_Enclave_Initialization_Helper_Source_1_106_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Services_Secure_Enclave_Initialization_Helper_Source_1_106_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Services_Secure_Enclave_Initialization_Helper_Source_1_106_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component AlifSemiconductor::Services:Secure Enclave:core&Source@1.106.0
add_library(AlifSemiconductor_Services_Secure_Enclave_core_Source_1_106_0 OBJECT
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/source/services_host_application.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/source/services_host_boot.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/source/services_host_clocks.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/source/services_host_cryptocell.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/source/services_host_error.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/source/services_host_extsys0.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/source/services_host_handler.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/source/services_host_maintenance.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/source/services_host_padcontrol.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/source/services_host_pinmux.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/source/services_host_power.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/source/services_host_system.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/source/services_host_update.c"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/templates/services_lib_interface.c"
)
target_include_directories(AlifSemiconductor_Services_Secure_Enclave_core_Source_1_106_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/include"
  "${CMSIS_PACK_ROOT}/AlifSemiconductor/Ensemble/2.0.0-rc2.15/se_services/templates"
)
target_compile_definitions(AlifSemiconductor_Services_Secure_Enclave_core_Source_1_106_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(AlifSemiconductor_Services_Secure_Enclave_core_Source_1_106_0 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(AlifSemiconductor_Services_Secure_Enclave_core_Source_1_106_0 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component tensorflow::Data Exchange:Serialization:flatbuffers&tensorflow@1.25.2
add_library(tensorflow_Data_Exchange_Serialization_flatbuffers_tensorflow_1_25_2 INTERFACE)
target_include_directories(tensorflow_Data_Exchange_Serialization_flatbuffers_tensorflow_1_25_2 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/tensorflow/flatbuffers/1.25.2/src/include"
)
target_compile_definitions(tensorflow_Data_Exchange_Serialization_flatbuffers_tensorflow_1_25_2 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_link_libraries(tensorflow_Data_Exchange_Serialization_flatbuffers_tensorflow_1_25_2 INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)

# component tensorflow::Data Processing:Math:gemmlowp fixed-point&tensorflow@1.25.2
add_library(tensorflow_Data_Processing_Math_gemmlowp_fixed-point_tensorflow_1_25_2 INTERFACE)
target_include_directories(tensorflow_Data_Processing_Math_gemmlowp_fixed-point_tensorflow_1_25_2 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/tensorflow/gemmlowp/1.25.2/src"
)
target_compile_definitions(tensorflow_Data_Processing_Math_gemmlowp_fixed-point_tensorflow_1_25_2 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_link_libraries(tensorflow_Data_Processing_Math_gemmlowp_fixed-point_tensorflow_1_25_2 INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)

# component tensorflow::Data Processing:Math:kissfft&tensorflow@1.25.2
add_library(tensorflow_Data_Processing_Math_kissfft_tensorflow_1_25_2 OBJECT
  "${CMSIS_PACK_ROOT}/tensorflow/kissfft/1.25.2/src/kiss_fft.c"
  "${CMSIS_PACK_ROOT}/tensorflow/kissfft/1.25.2/src/tools/kiss_fftr.c"
)
target_include_directories(tensorflow_Data_Processing_Math_kissfft_tensorflow_1_25_2 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/tensorflow/kissfft/1.25.2/src"
  "${CMSIS_PACK_ROOT}/tensorflow/kissfft/1.25.2/src/tools"
)
target_compile_definitions(tensorflow_Data_Processing_Math_kissfft_tensorflow_1_25_2 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(tensorflow_Data_Processing_Math_kissfft_tensorflow_1_25_2 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(tensorflow_Data_Processing_Math_kissfft_tensorflow_1_25_2 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component tensorflow::Data Processing:Math:ruy&tensorflow@1.25.2
add_library(tensorflow_Data_Processing_Math_ruy_tensorflow_1_25_2 INTERFACE)
target_include_directories(tensorflow_Data_Processing_Math_ruy_tensorflow_1_25_2 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/tensorflow/ruy/1.25.2/src"
)
target_compile_definitions(tensorflow_Data_Processing_Math_ruy_tensorflow_1_25_2 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_link_libraries(tensorflow_Data_Processing_Math_ruy_tensorflow_1_25_2 INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)

# component tensorflow::Machine Learning:TensorFlow:Kernel Utils@1.25.2
add_library(tensorflow_Machine_Learning_TensorFlow_Kernel_Utils_1_25_2 OBJECT
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels/kernel_util.cpp"
  "${SOLUTION_ROOT}/object-detection/RTE/Machine_Learning/debug_log.cpp"
  "${SOLUTION_ROOT}/object-detection/RTE/Machine_Learning/micro_time.cpp"
  "${SOLUTION_ROOT}/object-detection/RTE/Machine_Learning/system_setup.cpp"
)
target_include_directories(tensorflow_Machine_Learning_TensorFlow_Kernel_Utils_1_25_2 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(tensorflow_Machine_Learning_TensorFlow_Kernel_Utils_1_25_2 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(tensorflow_Machine_Learning_TensorFlow_Kernel_Utils_1_25_2 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(tensorflow_Machine_Learning_TensorFlow_Kernel_Utils_1_25_2 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component tensorflow::Machine Learning:TensorFlow:Kernel&CMSIS-NN@1.25.2
add_library(tensorflow_Machine_Learning_TensorFlow_Kernel_CMSIS-NN_1_25_2 OBJECT
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/compiler/mlir/lite/core/api/error_reporter.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/compiler/mlir/lite/schema/schema_utils.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/core/api/flatbuffer_conversions.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/core/api/tensor_utils.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/core/c/common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels/internal/common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels/internal/portable_tensor_utils.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels/internal/quantization_util.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels/internal/reference/comparisons.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels/internal/runtime_shape.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels/internal/tensor_ctypes.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/kernels/internal/tensor_utils.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/fake_micro_context.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/flatbuffer_utils.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/hexdump.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/activations.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/activations_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/add_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/add_n.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/arg_min_max.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/assign_variable.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/batch_matmul_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/batch_to_space_nd.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/broadcast_args.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/broadcast_to.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/call_once.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cast.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/ceil.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/circular_buffer.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/circular_buffer_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cmsis_nn/add.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cmsis_nn/batch_matmul.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cmsis_nn/conv.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cmsis_nn/depthwise_conv.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cmsis_nn/fully_connected.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cmsis_nn/maximum_minimum.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cmsis_nn/mul.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cmsis_nn/pooling.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cmsis_nn/softmax.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cmsis_nn/svdf.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cmsis_nn/transpose_conv.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cmsis_nn/unidirectional_sequence_lstm.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/comparisons.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/concatenation.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/conv_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/cumsum.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/decompress.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/decompress_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/depth_to_space.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/depthwise_conv_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/dequantize.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/dequantize_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/detection_postprocess.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/div.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/elementwise.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/elu.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/embedding_lookup.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/ethosu.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/exp.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/expand_dims.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/fill.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/floor.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/floor_div.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/floor_mod.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/fully_connected_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/gather.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/gather_nd.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/hard_swish.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/hard_swish_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/if.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/kernel_runner.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/kernel_util.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/l2_pool_2d.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/l2norm.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/leaky_relu.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/leaky_relu_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/log_softmax.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/logical.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/logical_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/logistic.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/logistic_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/lstm_eval.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/lstm_eval_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/micro_tensor_utils.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/mirror_pad.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/mul_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/neg.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/pack.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/pad.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/pooling_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/prelu.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/prelu_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/quantize.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/quantize_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/read_variable.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/reduce.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/reduce_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/reshape.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/reshape_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/resize_bilinear.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/resize_nearest_neighbor.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/round.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/select.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/shape.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/slice.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/softmax_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/space_to_batch_nd.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/space_to_depth.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/split.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/split_v.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/squared_difference.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/squeeze.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/strided_slice.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/strided_slice_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/sub.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/sub_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/svdf_common.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/tanh.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/transpose.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/unpack.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/var_handle.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/while.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/kernels/zeros_like.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/memory_helpers.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/memory_planner/linear_memory_planner.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/memory_planner/non_persistent_buffer_planner_shim.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/micro_allocation_info.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/micro_allocator.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/micro_context.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/micro_interpreter.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/micro_interpreter_context.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/micro_interpreter_graph.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/micro_log.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/micro_op_resolver.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/micro_profiler.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/micro_resource_variable.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/micro_utils.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/mock_micro_graph.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/recording_micro_allocator.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/test_helper_custom_ops.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/test_helpers.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.cpp"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/tflite_bridge/micro_error_reporter.cpp"
)
target_include_directories(tensorflow_Machine_Learning_TensorFlow_Kernel_CMSIS-NN_1_25_2 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
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
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/tflite_bridge"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/schema"
)
target_compile_definitions(tensorflow_Machine_Learning_TensorFlow_Kernel_CMSIS-NN_1_25_2 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_compile_options(tensorflow_Machine_Learning_TensorFlow_Kernel_CMSIS-NN_1_25_2 PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(tensorflow_Machine_Learning_TensorFlow_Kernel_CMSIS-NN_1_25_2 PUBLIC
  ${CONTEXT}_ABSTRACTIONS
)

# component tensorflow::Machine Learning:TensorFlow:Testing@1.25.2
add_library(tensorflow_Machine_Learning_TensorFlow_Testing_1_25_2 INTERFACE)
target_include_directories(tensorflow_Machine_Learning_TensorFlow_Testing_1_25_2 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2"
  "${CMSIS_PACK_ROOT}/tensorflow/tensorflow-lite-micro/1.25.2/tensorflow/lite/micro/testing"
)
target_compile_definitions(tensorflow_Machine_Learning_TensorFlow_Testing_1_25_2 INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
target_link_libraries(tensorflow_Machine_Learning_TensorFlow_Testing_1_25_2 INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)
