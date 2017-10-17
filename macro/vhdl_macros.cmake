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

set(CMAKE_VHDL_COMPILER_ENV_VAR ghdl)
set(CMAKE_VHDL_COMPILER ghdl)

# CMAKE macro for add_vhdl_source macro
macro (add_vhdl_source)
    file (RELATIVE_PATH _path "${PROJECT_SOURCE_DIR}" "${CMAKE_CURRENT_SOURCE_DIR}")
    foreach (_src_n ${ARGV0})
        if (_path)
           set(FILE_SRC "${_path}/${_src_n}")
        else()
           set(FILE_SRC "${_src_n}")
        endif()
        message(STATUS "Found VHDL Source: ${FILE_SRC}")
        add_custom_target("${ARGV1}" COMMAND ${CMAKE_VHDL_COMPILER} -a "${CMAKE_SOURCE_DIR}/${FILE_SRC}" WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
        list (APPEND VHDL_MODULE "${ARGV1}")
    endforeach()
        set (VHDL_MODULE ${VHDL_MODULE}  CACHE INTERNAL "" FORCE)
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

        add_custom_target("${ARGV1}" COMMAND ${CMAKE_VHDL_COMPILER} -a "${CMAKE_SOURCE_DIR}/${FILE_SRC}" &&
                                                 ${CMAKE_VHDL_COMPILER} -e "${ENTITY_NAME}"    WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
        add_custom_target("${TEST_NAME}" COMMAND ${CMAKE_VHDL_COMPILER}  -r ${ENTITY_NAME} --vcd=${TRACE_PATH} WORKING_DIRECTORY ${CMAKE_BINARY_DIR} DEPENDS "${ARGV1}")
        add_custom_target("sim_${ARGV1}" COMMAND gtkwave ${TRACE_PATH} WORKING_DIRECTORY ${CMAKE_BINARY_DIR} DEPENDS "${TEST_NAME}")
        
        add_test(NAME "${ARGV1}" COMMAND ${CMAKE_VHDL_COMPILER}  -r "${ENTITY_NAME}" --assert-level=error WORKING_DIRECTORY ${CMAKE_BINARY_DIR})
        list (APPEND VHDL_TEST_MODULE "${ARGV1}")

        add_dependencies(runtest "${ARGV1}")

        message(STATUS "Adding VHDL Test: ${FILE_SRC}")
    endforeach()
    set (VHDL_TEST_MODULE ${VHDL_TEST_MODULE}  CACHE INTERNAL "" FORCE)
endmacro()

