# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/mather01/Documents/GitHub/cmsis-mlek-examples/Alif/AppKit_D3/MLEK_Object_Detection_and_Video_User_Algorithm_Template/tmp/object-detection.Debug-Live_Stream+AE722F80F55D5LS")
  file(MAKE_DIRECTORY "/Users/mather01/Documents/GitHub/cmsis-mlek-examples/Alif/AppKit_D3/MLEK_Object_Detection_and_Video_User_Algorithm_Template/tmp/object-detection.Debug-Live_Stream+AE722F80F55D5LS")
endif()
file(MAKE_DIRECTORY
  "/Users/mather01/Documents/GitHub/cmsis-mlek-examples/Alif/AppKit_D3/MLEK_Object_Detection_and_Video_User_Algorithm_Template/tmp/1"
  "/Users/mather01/Documents/GitHub/cmsis-mlek-examples/Alif/AppKit_D3/MLEK_Object_Detection_and_Video_User_Algorithm_Template/tmp/object-detection.Debug-Live_Stream+AE722F80F55D5LS"
  "/Users/mather01/Documents/GitHub/cmsis-mlek-examples/Alif/AppKit_D3/MLEK_Object_Detection_and_Video_User_Algorithm_Template/tmp/object-detection.Debug-Live_Stream+AE722F80F55D5LS/tmp"
  "/Users/mather01/Documents/GitHub/cmsis-mlek-examples/Alif/AppKit_D3/MLEK_Object_Detection_and_Video_User_Algorithm_Template/tmp/object-detection.Debug-Live_Stream+AE722F80F55D5LS/src/object-detection.Debug-Live_Stream+AE722F80F55D5LS-stamp"
  "/Users/mather01/Documents/GitHub/cmsis-mlek-examples/Alif/AppKit_D3/MLEK_Object_Detection_and_Video_User_Algorithm_Template/tmp/object-detection.Debug-Live_Stream+AE722F80F55D5LS/src"
  "/Users/mather01/Documents/GitHub/cmsis-mlek-examples/Alif/AppKit_D3/MLEK_Object_Detection_and_Video_User_Algorithm_Template/tmp/object-detection.Debug-Live_Stream+AE722F80F55D5LS/src/object-detection.Debug-Live_Stream+AE722F80F55D5LS-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/mather01/Documents/GitHub/cmsis-mlek-examples/Alif/AppKit_D3/MLEK_Object_Detection_and_Video_User_Algorithm_Template/tmp/object-detection.Debug-Live_Stream+AE722F80F55D5LS/src/object-detection.Debug-Live_Stream+AE722F80F55D5LS-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/mather01/Documents/GitHub/cmsis-mlek-examples/Alif/AppKit_D3/MLEK_Object_Detection_and_Video_User_Algorithm_Template/tmp/object-detection.Debug-Live_Stream+AE722F80F55D5LS/src/object-detection.Debug-Live_Stream+AE722F80F55D5LS-stamp${cfgdir}") # cfgdir has leading slash
endif()
