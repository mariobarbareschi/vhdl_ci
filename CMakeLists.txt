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

#Give a name to the project
project(ghdl_ci)

#This project requires at least cmake 3.0
cmake_minimum_required(VERSION 3.0)

#To make everything working, just add macros specified in the vhdl_macros.cmake file
include(macro/vhdl_macros.cmake)

#Let cmake enables the ctest environment, then specify that the command runtest effectively runs ctest
enable_testing()
add_custom_target(runtest COMMAND ${CMAKE_CTEST_COMMAND} --verbose --build-run-dir=${CMAKE_CURRENT_BINARY_DIR})

#############

# Getting access to all VHDL sources
add_subdirectory(src)
# Retrieve Testbenches as well
add_subdirectory(testbench)

add_custom_target(list ALL COMMAND ghdl -d)
set(CTEST_OUTPUT_ON_FAILURE 1)


