[![](https://images.microbadger.com/badges/image/mariobarbareschi/vhdl_ci.svg)](https://microbadger.com/images/mariobarbareschi/vhdl_ci "Get your own image badge on microbadger.com")[![Build Status](https://travis-ci.org/mariobarbareschi/vhdl_ci.svg?branch=master)](https://travis-ci.org/mariobarbareschi/vhdl_ci)
# vhdl_ci
This repository contains a minimal configuration for getting started with the Continuous Integration for the VHDL language, by involving the GHDL compiler

--------
## Prerequisites
To compile and simulate VHDL projects, you need to install the following tools:
  - cmake (v > 3.3)
  - ghdl
  - gtkwave (optional)

This repo provides you two [CMake] macros and some other stuff for managing VHDL entities and testbenches

## Create you first project
Clearly, your VHDL project is made of entities, packages, functions, testbenches, and so on. You have available two [CMake] macros:

| CMake Macros | Description |
| ------ | ------ |
| add_vhdl_source(<file> <entity_tag>) | add <file> with the symbolic name <entity_tag>|
| add_testbench_source(<file> <test_tag>) | add testbench <file> with the symbolic name <test_tag> |

Tags are actually used for giving dependencies among entities and testbenches
```cmake
add_testbench_source(adder_testbench.vhd test_add)
add_dependencies(test_add ripple_carry_adder full_adder half_adder)
```
Just make sure that the testbench architecture and the associated tag have the same name, otherwise you will eventually fail your simulation.
The effect of add_testbench_source is to add a job for make such that it compiles entities contained inside the VHDL file, while add_testbench_source creates a job for running a test, evaluating assertions inside the testbench, or simulation, by producing in output a VCD file.

## Running the example
To running the demo example, just type into your system shell:
```sh
$ git clone https://github.com/mariobarbareschi/vhdl_ci.git
$ cd vhdl_ci
$ mkdir build && cd build
$ cmake ..
```
Once cmake terminated, you will have available some make jobs ready to be ran:
```sh
$ make mux2_1
$ make mux2_1_testbench
$ make mux4_1
$ make mux4_1_testbench
$ make runtest
$ make sim_mux2_1_testbench
$ make sim_mux4_1_testbench
$ make runtest
```
Even though the [CMake] project is based on [CTest], running make test will fail, since it does not support dependencies. Instead, run make all test.

## Automatic Compilation
In order to directly support the continuous integration, this project provides you a [Docker image] with all you need for testing your VHDL code. Indeed, the demo of this repository is automatically executed, namely tested, through [Travis-CI].
By your own, having available [Docker], just type:
```sh
$ git clone https://github.com/mariobarbareschi/vhdl_ci.git
$ docker build -t vhdl_ci .
$ docker run vhdl_ci /bin/bash -c "mkdir /opt/build && cd /opt/build && cmake .. && make all test"
```
If you want to skip the docker image build, just pull it from the [Docker hub]:

```sh
$ docker pull mariobarbareschi/vhdl_ci
```
--------
### LICENSE ###


* [aGPLV3.0](https://www.gnu.org/licenses/agpl.html)
----------
### Contributing ###
Github is for social coding: if you want to write code, I encourage contributions through pull requests from forks of this repository.

   [CMake]: <https://cmake.org>
   [CTest]: <https://cmake.org/Wiki/CMake/Testing_With_CTest>
   [Travis-CI]: <https://travis-ci.org/mariobarbareschi/vhdl_ci>
   [Docker]: <https://hub.docker.com/r/mariobarbareschi/vhdl_ci>
   [Docker image]: <https://hub.docker.com/r/mariobarbareschi/vhdl_ci>
   [Docker hub]: <https://hub.docker.com/>
