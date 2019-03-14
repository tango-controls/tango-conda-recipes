Conda recipes
=============

Conda recipes for the TANGO project.

Deployed at [conda tango-controls](https://anaconda.org/tango-controls).

So far, the following conda packages are handled here:

- tango (cppTango & docs)

How to build a package manually?
--------------------------------

Go to the recipe directory and run:

``` none
$ conda build . \
  --prefix-length=40 \
  --output-folder=../dist/ \
  --channel=tango-controls
```
