import shutil
from shutil import copyfile, rmtree
import os


TEMP_FOLDER = "TEMP"
shutil.rmtree(TEMP_FOLDER, ignore_errors=True)