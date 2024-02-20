# Embedded Systems VHDL-LAB Assignment
Submitted by:
- [Saujanya Shrestha - BCT36](https://github.com/OGnewar)
- [Anu Ale Magar - BCT08](https://github.com/AnuAleMagar)
This repository contains materials for an Embedded System VHDL Assignment. Below is a brief overview of the lab and its contents.

## Table of Contents
- [Introduction](#introduction)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
  - [Cloning the Repository](#cloning-the-repository)
  - [Installing GHDL](#installing-ghdl)
  - [Installing GTKWave](#installing-gtkwave)
- [Running Test Cases](#running-test-cases)
- [Conclusion](#conclusion)

## Introduction
The Embedded System VHDL Assignment focuses on implementing various embedded system designs using VHDL. This assignment covers fundamental concepts in VHDL programming and provides hands-on experience in developing embedded systems.

## Prerequisites
Basic understanding of VHDL programming and familiarity with embedded system concepts is recommended before attempting this assignment.

## Getting Started
### Cloning the Repository
To clone this repository, use the following command:
```bash
git clone https://github.com/OGnewar/VHDL-LAB
cd VHDL-LAB
```
### Installing GHDL
GHDL is a free and open-source VHDL simulator. Follow the instructions on the [GHDL GitHub repository](https://github.com/ghdl/ghdl) to install GHDL on your system.

### Installing GTKWave
GTKWave is a waveform viewer. Follow the instructions on the [GTKWave website](http://gtkwave.sourceforge.net/) to install GTKWave on your system.

## Running Test Cases
We have used the vim text editor to write the vhdl codes. All that remains is to navigate to the test directory and run the test cases using the provided scripts.
```bash
# Command for running GHDL
ghdl -a your_test_bench.vhdl
ghdl -e your_test_bench_entity
ghdl -r your_test_bench_entity --wave=wave.vcd --stop-time=desired-time-duration
```
```bash
# Command for running GTKWave
gtkwave wave.vcd
```
## Conclusion
This README.md provides a concise overview of the Embedded System VHDL Assignment and instructions for setup and execution. For detailed instructions and assignment materials, refer to the repository contents.
