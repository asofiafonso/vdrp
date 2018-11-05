#!/bin/bash

#. ../setup.sh
export PYTHONPATH="$pwd/src/python"

#python -m unittest tests.test_cltools tests.test_daophot  tests.test_astrometry
python -m unittest tests.test_cltools
