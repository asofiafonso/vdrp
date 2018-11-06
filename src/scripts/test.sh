#!/bin/bash

#. ../setup.sh
export PYTHONPATH=$PWD/src/python
export PATH=$PATH:$PWD/bin:/home/00115/gebhardt/lib/daoprogs/:/home/00115/gebhardt/lib/daoprogs/moreprogs2/

#python -m unittest tests.test_cltools tests.test_daophot  tests.test_astrometry
##python -m unittest
##python -m tests.test_cltools
python -m tests.test_daophot
#python -m tests.test_astrometry
