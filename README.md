About hdf5_split
================

Home: http://www.hdfgroup.org/HDF5/

Package license: HDF5

Feedstock license: BSD 3-Clause

Summary: HDF5 is a data model, library, and file format for storing and managing data



Current build status
====================


<table><tr>
    <td>CircleCI</td>
    <td>
      <a href="https://circleci.com/gh/cryoem/hdf5-feedstock">
        <img alt="Linux" src="https://img.shields.io/circleci/project/github/cryoem/hdf5-feedstock/master.svg?label=Linux">
      </a>
    </td>
  </tr><tr>
    <td>Travis</td>
    <td>
      <a href="https://travis-ci.org/cryoem/hdf5-feedstock">
        <img alt="macOS" src="https://img.shields.io/travis/cryoem/hdf5-feedstock/master.svg?label=macOS">
      </a>
    </td>
  </tr><tr>
    <td>Appveyor</td>
    <td>
      <a href="https://ci.appveyor.com/project/cryoem/hdf5-feedstock/branch/master">
        <img alt="windows" src="https://img.shields.io/appveyor/ci/cryoem/hdf5-feedstock/master.svg?label=Windows">
      </a>
    </td>
  </tr>
    
  <tr>
    <td>Azure</td>
    <td>
      <details>
        <summary>
          <a href="https://dev.azure.com/cryoem/feedstock-builds/_build/latest?definitionId=blank&branchName=master">
            <img src="https://dev.azure.com/cryoem/feedstock-builds/_apis/build/status/hdf5-feedstock?branchName=master">
          </a>
        </summary>
        <table>
          <thead><tr><th>Variant</th><th>Status</th></tr></thead>
          <tbody><tr>
              <td>linux</td>
              <td>
                <a href="https://dev.azure.com/cryoem/feedstock-builds/_build/latest?definitionId=blank&branchName=master">
                  <img src="https://dev.azure.com/cryoem/feedstock-builds/_apis/build/status/hdf5-feedstock?branchName=master&jobName=linux&configuration=linux_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>osx</td>
              <td>
                <a href="https://dev.azure.com/cryoem/feedstock-builds/_build/latest?definitionId=blank&branchName=master">
                  <img src="https://dev.azure.com/cryoem/feedstock-builds/_apis/build/status/hdf5-feedstock?branchName=master&jobName=osx&configuration=osx_" alt="variant">
                </a>
              </td>
            </tr><tr>
              <td>win_c_compilervs2015cxx_compilervs2015vc14</td>
              <td>
                <a href="https://dev.azure.com/cryoem/feedstock-builds/_build/latest?definitionId=blank&branchName=master">
                  <img src="https://dev.azure.com/cryoem/feedstock-builds/_apis/build/status/hdf5-feedstock?branchName=master&jobName=win&configuration=win_c_compilervs2015cxx_compilervs2015vc14" alt="variant">
                </a>
              </td>
            </tr>
          </tbody>
        </table>
      </details>
    </td>
  </tr>
  <tr>
    <td>Linux_ppc64le</td>
    <td>
      <img src="https://img.shields.io/badge/ppc64le-disabled-lightgrey.svg" alt="ppc64le disabled">
    </td>
  </tr>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-hdf5-green.svg)](https://anaconda.org/cryoem/hdf5) | [![Conda Downloads](https://img.shields.io/conda/dn/cryoem/hdf5.svg)](https://anaconda.org/cryoem/hdf5) | [![Conda Version](https://img.shields.io/conda/vn/cryoem/hdf5.svg)](https://anaconda.org/cryoem/hdf5) | [![Conda Platforms](https://img.shields.io/conda/pn/cryoem/hdf5.svg)](https://anaconda.org/cryoem/hdf5) |

Installing hdf5_split
=====================

Installing `hdf5_split` from the `cryoem` channel can be achieved by adding `cryoem` to your channels with:

```
conda config --add channels cryoem
```

Once the `cryoem` channel has been enabled, `hdf5` can be installed with:

```
conda install hdf5
```

It is possible to list all of the versions of `hdf5` available on your platform with:

```
conda search hdf5 --channel cryoem
```




Updating hdf5_split-feedstock
=============================

If you would like to improve the hdf5_split recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`cryoem` channel, whereupon the built conda packages will be available for
everybody to install and use from the `cryoem` channel.
Note that all branches in the cryoem/hdf5_split-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://conda.io/docs/user-guide/tasks/build-packages/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@SylvainCorlay](https://github.com/SylvainCorlay/)
* [@astrofrog-conda-forge](https://github.com/astrofrog-conda-forge/)
* [@beckermr](https://github.com/beckermr/)
* [@davidbrochart](https://github.com/davidbrochart/)
* [@gillins](https://github.com/gillins/)
* [@groutr](https://github.com/groutr/)
* [@jakirkham](https://github.com/jakirkham/)
* [@marcelotrevisani](https://github.com/marcelotrevisani/)
* [@marqh](https://github.com/marqh/)
* [@ocefpaf](https://github.com/ocefpaf/)
* [@scopatz](https://github.com/scopatz/)

