import os
import sys
from vdrp import cltools
import vdrp
import shutil
import unittest
import path
import glob
from argparse import Namespace

from testbase import TestBase

from vdrp import astrometry
from vdrp.utils import read_radec
#from vdrp.astrometry import main
#import glob
#import path

# class Test_Get_Exposures_files(TestBase):
#     ff = ["20180611T054545_015.fits", "20180611T055249_015.fits", "20180611T060006_015.fits"]
#
#     def test_get_exposures_files(self):
#         with path.Path(self.test_dir):
#             exposures_files = astrometry.get_exposures_files(self.test_dir)
#             self.assertTrue(("exp01" in exposures_files))
#             self.assertTrue(("exp02" in exposures_files))
#             self.assertTrue(("exp03" in exposures_files))
#             if "exp01" in exposures_files:
#                 self.assertTrue(exposures_files["exp01"][0] == "20180611T054545_015")
#             if "exp02" in exposures_files:
#                 self.assertTrue(exposures_files["exp02"][0] == "20180611T055249_015")
#             if "exp03" in exposures_files:
#                 self.assertTrue(exposures_files["exp03"][0] == "20180611T060006_015")
