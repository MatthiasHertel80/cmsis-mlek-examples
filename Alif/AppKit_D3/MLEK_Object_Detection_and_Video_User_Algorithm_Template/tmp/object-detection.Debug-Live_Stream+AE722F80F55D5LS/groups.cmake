# groups.cmake

# group Application Main
add_library(Group_Application_Main OBJECT
  "${SOLUTION_ROOT}/object-detection/src/main_object_detection.cpp"
)
target_include_directories(Group_Application_Main PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(Group_Application_Main PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
add_library(Group_Application_Main_ABSTRACTIONS INTERFACE)
target_link_libraries(Group_Application_Main_ABSTRACTIONS INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)
target_compile_options(Group_Application_Main PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(Group_Application_Main PUBLIC
  Group_Application_Main_ABSTRACTIONS
)

# group Image Source
add_library(Group_Image_Source OBJECT
  "${SOLUTION_ROOT}/object-detection/src/image_processing_func.c"
  "${SOLUTION_ROOT}/object-detection/src/VideoSource_Live.cpp"
)
target_include_directories(Group_Image_Source PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(Group_Image_Source PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
add_library(Group_Image_Source_ABSTRACTIONS INTERFACE)
target_link_libraries(Group_Image_Source_ABSTRACTIONS INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)
target_compile_options(Group_Image_Source PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(Group_Image_Source PUBLIC
  Group_Image_Source_ABSTRACTIONS
)

# group Configuration
add_library(Group_Configuration INTERFACE)
target_include_directories(Group_Configuration INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${SOLUTION_ROOT}/object-detection/config"
)
target_compile_definitions(Group_Configuration INTERFACE
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
add_library(Group_Configuration_ABSTRACTIONS INTERFACE)
target_link_libraries(Group_Configuration_ABSTRACTIONS INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)

# group Object Detection ML models
add_library(Group_Object_Detection_ML_models OBJECT
  "${SOLUTION_ROOT}/object-detection/src/yolo-fastest_192_face_v4.tflite.cpp"
)
target_include_directories(Group_Object_Detection_ML_models PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(Group_Object_Detection_ML_models PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
add_library(Group_Object_Detection_ML_models_ABSTRACTIONS INTERFACE)
target_link_libraries(Group_Object_Detection_ML_models_ABSTRACTIONS INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)
target_compile_options(Group_Object_Detection_ML_models PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(Group_Object_Detection_ML_models PUBLIC
  Group_Object_Detection_ML_models_ABSTRACTIONS
)

# group Board
add_library(Group_Board OBJECT
  "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP/main.c"
  "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP/retarget_stdio.c"
  "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP/ext_init.c"
)
target_include_directories(Group_Board PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
  "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP"
)
target_compile_definitions(Group_Board PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
add_library(Group_Board_ABSTRACTIONS INTERFACE)
target_link_libraries(Group_Board_ABSTRACTIONS INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)
target_compile_options(Group_Board PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(Group_Board PUBLIC
  Group_Board_ABSTRACTIONS
)

# group Ethos Interface
add_library(Group_Ethos_Interface OBJECT
  "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP/ethosu_cb_dcache.c"
  "${SOLUTION_ROOT}/board/AppKit-E7_M55_HP/ethosu_cb_os_rtos2.c"
)
target_include_directories(Group_Ethos_Interface PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_INCLUDE_DIRECTORIES>
)
target_compile_definitions(Group_Ethos_Interface PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_DEFINITIONS>
)
add_library(Group_Ethos_Interface_ABSTRACTIONS INTERFACE)
target_link_libraries(Group_Ethos_Interface_ABSTRACTIONS INTERFACE
  ${CONTEXT}_ABSTRACTIONS
)
target_compile_options(Group_Ethos_Interface PUBLIC
  $<TARGET_PROPERTY:${CONTEXT},INTERFACE_COMPILE_OPTIONS>
)
target_link_libraries(Group_Ethos_Interface PUBLIC
  Group_Ethos_Interface_ABSTRACTIONS
)
