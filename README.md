Conda recipes
=============

This repository stores the conda recipes for several projects:
- jsonpickle
- libglu
- lima
- louie
- omniorb
- pychooch
- pymca
- pyqt
- pyqwt-qt3
- pytango
- pytango-devel
- qt
- qub-qt3
- silx
- tango
- v4l2



How to build a package manually?
--------------------------------

Go to the recipe and directory and run:

``` none
$ conda build . \
  --prefix-length=80 \
  --output-folder=../dist/ \
  --python=$PYTHON_VERSION \
  --channel=http://bcu-ci.esrf.fr/stable
```


Continuous integration
----------------------

Gilab CI is configured to build the corresponding conda packages using a specific build environment.

The packages are uploaded to one of the following private channels, depending on the configuration:
- `http://bcu-ci.esrf.fr/stable` (i.e. `/segfs/bliss/source/admin/conda/`).
- `http://bcu-ci.esrf.fr/devel` (i.e. `/segfs/bliss/source/admin/conda-devel/`).

The builds can be customized by editing `.gitlab-ci.yml`.


Anaconda cloud
--------------

The private channels are also mirrored on the anaconda pulbic channels `esrf-bcu` and `esrf-bcu-devel`.

The channels can be synchronized using the following commands

``` none
$ source activate root
$ conda install anaconda-client
$ find /segfs/bliss/source/admin/conda -name "*tar.bz2" | xargs anaconda upload -u esrf-bcu --force
$ find /segfs/bliss/source/admin/conda-devel -name "*tar.bz2" | xargs anaconda upload -u esrf-bcu-devel --force
```
