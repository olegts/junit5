#!/usr/bin/env bash

rm -rf mlib
mkdir mlib

echo "Compile and package junit-platform-commons module"
cd junit-platform-commons
./compile.sh
./package.sh
cd ..

echo "Compile and package junit-platform-suite-api module"
cd junit-platform-suite-api
./compile.sh
./package.sh
cd ..

echo "Compile and package junit-platform-engine module"
cd junit-platform-engine
./compile.sh
./package.sh
cd ..

echo "Compile and package junit-platform-launcher module"
cd junit-platform-launcher
./compile.sh
./package.sh
cd ..

echo "Compile and package junit-platform-console module"
cd junit-platform-console
./compile.sh
./package.sh
cd ..

echo "Compile and package junit-platform-runner module"
cd junit-platform-runner
./compile.sh
./package.sh
cd ..

echo "Compile and package junit-jupiter-api module"
cd junit-jupiter-api
./compile.sh
./package.sh
cd ..

echo "Compile and package junit-jupiter-engine module"
cd junit-jupiter-engine
./compile.sh
./package.sh
cd ..

echo "Compile and package junit-jupiter-params module"
cd junit-jupiter-params
./compile.sh
./package.sh
cd ..

echo "Compile and package junit-jupiter-migrationsupport module"
cd junit-jupiter-migrationsupport
./compile.sh
./package.sh
cd ..

echo "Compile and package junit-vintage-engine module"
cd junit-vintage-engine
./compile.sh
./package.sh
cd ..