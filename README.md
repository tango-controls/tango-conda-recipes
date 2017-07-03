Conda recipes
=============

This repository stores the conda recipes for several projects:
- omniorb
- tango
- pytango
- pychooch


How to build a package manually?
--------------------------------

Go to the recipe and directory and run:

``` none
conda build . \
  --prefix-length=80 \
  --output-folder=../dist/ \
  --python=$PYTHON_VERSION \
  --channel=http://bcu-ci.esrf.fr/stable
```

Continuous integration
----------------------

Gilab CI is configured to build the corresponding conda packages using a specific build environment.

The packages are uploaded to `http://bcu-ci.esrf.fr/stable` (i.e. `/segfs/bliss/source/admin/conda/`).

The builds can be customized by editing `.gitlab-ci.yml`.
