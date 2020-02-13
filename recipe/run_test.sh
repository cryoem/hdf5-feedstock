# Stop on first error
set -ex

# Test C compiler
if [[ "$mpi" != "nompi" ]]; then
    h5cc=h5pcc
else
    h5cc=h5cc
fi
echo "Testing $h5cc"
$h5cc -show
$h5cc h5_cmprss.c -o h5_cmprss
./h5_cmprss

# Test C++ compiler
echo "Testing h5c++"
h5c++ -show
h5c++ h5tutr_cmprss.cpp -o h5tutr_cmprss
./h5tutr_cmprss
