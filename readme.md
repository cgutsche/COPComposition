## CoSMuCOP -- A Composition System for Multi-Dimensional Context-Oriented Programming

This repository contains examples for using CoSMuCOP as presented at the International Conference on Software Language Engineering (SLE) 2026.

The examples can be reproduced, either by using the provided Dockerfile or by installing Julia and the needed packages.

Be aware that the performance measurement will take some time.

The repository also includes the following files:
- copCompositionLanguage.jl: The code for the composition system, that is included in [Contexts.jl](https://github.com/cgutsche/Contexts.jl)
- output/repository_droneScenario_generated.jl: An example of a generated file.

## Using Docker

1. Build image: `docker build -t cosmucop .`
2. Run image: `docker run -v $(pwd)/output:/output cosmucop`

## Installation

1. Install Julia (tested with version 1.11 and 1.10)
2. Install required packages by `julia setup.jl`
3. Execute `julia droneScenario.jl` and `compositionPerformance.jl` for reproducing performance measurements



