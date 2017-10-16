# VHDL Continous Integration Example
# Copyright (C) 2017  Mario Barbareschi
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# CMAKE macro for add_vhdl_source macro
macro (add_vhdl_source)
    file (RELATIVE_PATH _path "${PROJECT_SOURCE_DIR}" "${CMAKE_CURRENT_SOURCE_DIR}")
    foreach (_src_n ${ARGV0})
        if (_path)
           set(FILE_SRC "${_path}/${_src_n}")
        else()
           set(FILE_SRC "${_src_n}")
        endif()
        message("-- Found VHDL Source: ${CMAKE_SOURCE_DIR}/${FILE_SRC}")
        add_custom_target("${ARGV1}" COMMAND ghdl -a "${CMAKE_SOURCE_DIR}/${FILE_SRC}" WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
    endforeach()
endmacro()

# CMAKE macro for add_vhdl_path macro
macro (add_vhdl_path)
  file (RELATIVE_PATH _path "${PROJECT_SOURCE_DIR}" "${CMAKE_CURRENT_SOURCE_DIR}")
  foreach (_src_cmake ${ARGN})
  	   message("-- Adding VHDL Source Directory: ${CMAKE_SOURCE_DIR}/${_src_cmake}")
      add_subdirectory(${_src_cmake})
      # propagate SRCS to parent directory
  endforeach()
endmacro()


# CMAKE macro for add_testbench_source macro
macro (add_testbench_source)
    file (RELATIVE_PATH _path "${PROJECT_SOURCE_DIR}" "${CMAKE_CURRENT_SOURCE_DIR}")
    foreach (_src ${ARGV0})
        if (_path)
            set(FILE_SRC "${_path}/${_src}")
        else()
            set(FILE_SRC "${_src}")
        endif()

        string(REGEX REPLACE ".vhd" "" TEST_NAME "${FILE_SRC}")
        string(REGEX REPLACE "/" "." TEST_NAME "${TEST_NAME}")
        string(REGEX REPLACE ".vhd" "" ENTITY_NAME "${_src}")
        set(TRACE_PATH "${CMAKE_BINARY_DIR}/trace")
        file(MAKE_DIRECTORY ${TRACE_PATH})
        set(TRACE_PATH "${TRACE_PATH}/${TEST_NAME}.vcd")

        add_custom_target("${TEST_NAME}" COMMAND ghdl -a "${CMAKE_SOURCE_DIR}/${FILE_SRC}" WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
        add_custom_target("${ARGV1}" COMMAND ghdl -r ${ENTITY_NAME} --vcd=${TRACE_PATH} WORKING_DIRECTORY ${CMAKE_BINARY_DIR} DEPENDS "${TEST_NAME}")
        add_custom_target("sim_${ARGV1}" COMMAND gtkwave ${TRACE_PATH} WORKING_DIRECTORY ${CMAKE_BINARY_DIR} DEPENDS "${ARGV1}")
        add_test(NAME "${ARGV1}" COMMAND ghdl -r "${ENTITY_NAME}" --assert-level=error WORKING_DIRECTORY ${CMAKE_BINARY_DIR})

        add_dependencies(runtest "${ARGV1}")

        message("-- Adding VHDL Test: ${CMAKE_SOURCE_DIR}/${FILE_SRC}")
    endforeach()
endmacro()

# CMAKE macro for add_testbench_path macro
macro (add_testbench_path)
  file (RELATIVE_PATH _path "${PROJECT_SOURCE_DIR}" "${CMAKE_CURRENT_SOURCE_DIR}")
  foreach (_src ${ARGN})
      message("-- Adding VHDL Test Directory: ${CMAKE_SOURCE_DIR}/${_src_cmake}")
      add_subdirectory(${_src})
  endforeach()
endmacro()

