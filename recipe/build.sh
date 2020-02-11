
#!/bin/bash

export LIBRARY_PATH="${PREFIX}/lib"

if [[ ! -z "$mpi" && "$mpi" != "nompi" ]]; then
  export CONFIGURE_ARGS="--enable-parallel ${CONFIGURE_ARGS}"
  export CC=mpicc
  export CXX=mpic++
  if [[ $(uname) == "Linux" ]]; then
    # --as-needed appears to cause problems with fortran compiler detection
    # due to missing libquadmath
    # unclear why required libs are stripped but still linked
    export LDFLAGS="${LDFLAGS} -Wl,--no-as-needed -Wl,--disable-new-dtags"
  fi
else
  export CC=$(basename ${CC})
  export CXX=$(basename ${CXX})
fi

./configure --prefix="${PREFIX}" \
            ${CONFIGURE_ARGS} \
            --with-pic \
            --host="${HOST}" \
            --build="${BUILD}" \
            --enable-linux-lfs \
            --with-zlib="${PREFIX}" \
            --with-pthread=yes  \
            --enable-cxx \
            --with-default-plugindir="${PREFIX}/lib/hdf5/plugin" \
            --enable-threadsafe \
            --enable-build-mode=production \
            --enable-unsupported \
            --enable-using-memchecker \
            --enable-clear-file-buffers \
            --with-ssl \
            --enable-static=no \

# allow oversubscribing with openmpi in make check
export OMPI_MCA_rmaps_base_oversubscribe=yes

# using || to quiet logs unless there is an issue
{
    # see this https://github.com/travis-ci/travis-ci/issues/4190#issuecomment-353342526
    while sleep 1m; do echo "make is still running..."; done &
    make -j "${CPU_COUNT}" ${VERBOSE_AT} >& make_logs.txt
    # make sure to kill the loop
    kill %1
} || {
    # make sure to kill the loop
    kill %1
    tail -n 5000 make_logs.txt
    exit 1
}

