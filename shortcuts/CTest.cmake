include(CTest)

function(add_test_executable target)
  add_executable(${ARGV})
  add_test(${target} ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${target})
endfunction()

function(add_test_subdirectory)
  if(BUILD_TESTING)
    enable_testing()
    add_subdirectory(${ARGV})
  endif()
endfunction()
