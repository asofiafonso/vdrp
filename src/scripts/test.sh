#!/bin/bash

#. ../setup.sh
export PYTHONPATH=$PWD/src/python
export PATH=$PATH:$PWD/bin

python -m unittest tests.test_cltools tests.test_daophot  tests.test_astrometry
#python -m unittest tests.test_cltools
