@echo off

set CURRENT_DIR=%CD%
set BUILD_DIR="build_vs2017_x86"

mkdir ..\%BUILD_DIR%
cd ..\%BUILD_DIR%
cmake .. -G"Visual Studio 15" -DCMAKE_BUILD_TYPE=Release -DASMJIT_DIR="../../asmjit" -DASMJIT_BUILD_STATIC=1 -DASMTK_BUILD_STATIC=1 -DASMTK_BUILD_TEST=1
cd %CURRENT_DIR%
