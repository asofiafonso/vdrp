#!/bin/bash

#. ../setup.sh
export PYTHONPATH=$PWD/src/python
export PATH=$PATH:$PWD/bin:/home/00115/gebhardt/lib/daoprogs/:/home/00115/gebhardt/lib/daoprogs/moreprogs2/:/home/00115/gebhardt/lib/daoprogs/moreprogs2/daomaster

##python -m unittest tests.test_cltools tests.test_daophot tests.test_astrometry
#python -m unittest tests.test_cltools #3 tests and OK
#python -m unittest tests.test_daophot #6 tests and OK
#python -m unittest tests.test_astrometry #1 test and OK
python -m unittest tests.test_cltools tests.test_daophot
