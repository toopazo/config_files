#!/usr/bin/env python

import os.path
# from os import listdir
# from os.path import isfile, join
import os
import os.path
# import csv
import sys
# import numpy as np
# from scipy import signal


class FilesInFolderProcessor(object):
    def __init__(self, base_folder, file_extension=""):
        assert isinstance(base_folder, str)
        self.base_folder = self.norm_path(base_folder)
        self.file_extension = file_extension
        self.sepline = "--------------------"
        self.print_fif()

    # @staticmethod
    def norm_path(self, mpath):
        mpath = os.path.normcase(mpath)
        mpath = os.path.normpath(mpath)
        mpath = os.path.abspath(mpath)
        # arg = "mpath %udate" % mpath
        # print(arg)
        return mpath

    # @staticmethod
    def get_fif(self):
        rpfile_arr = []
        fpfile_arr = []
        files_arr = os.listdir(self.base_folder)
        files_arr = sorted(files_arr)
        for rpfile in files_arr:
            fpfile = os.path.join(self.base_folder, rpfile)
            if os.path.isfile(fpfile) and rpfile.endswith(self.file_extension):
                rpfile_arr.append(rpfile)
                fpfile_arr.append(fpfile)
        return [rpfile_arr, fpfile_arr]

    # @staticmethod
    def print_fif(self):
        arg = "folder = %s" % self.base_folder
        print(arg)
        arg = "extension = %s" % self.file_extension
        print(arg)

        [rpfile_arr, fpfile_arr] = self.get_fif()
        for i in range(0, len(rpfile_arr)):
            arg = "file[%s] = %s" % (i, rpfile_arr[i])
            print(arg)
            # arg = "fpfile[%udate] = %udate" % (i, fpfile_arr[i])
            # print(arg)
        print(self.sepline)

    # @staticmethod
    def rename_fif(self):
        [rpfile_arr, fpfile_arr] = self.get_fif()
        for fpfile in fpfile_arr:
            mpair = os.path.split(fpfile)
            fullpath = mpair[0]
            oldname = mpair[1]

            # start replace
            tmp = oldname

            # manipulate
            tmp = tmp.replace(".pdf", "###")
            tmp = tmp.replace(" ", "_")
            tmp = tmp.replace("__", "_")
            tmp = tmp.replace("-", "_")
            tmp = tmp.replace(")", "")
            tmp = tmp.replace("(", "")
            tmp = tmp.replace("[", "")
            tmp = tmp.replace("]", "")
            tmp = tmp.replace(".", "")
            tmp = tmp.replace(",", "")
            tmp = tmp.replace("###", ".pdf")

            # end replace
            newname = tmp

            # replace
            new_fp_file = os.path.join(fullpath, newname)
            arg = "replacing file names %s by %s " % (oldname, newname)
            print(arg)
            os.rename(fpfile, new_fp_file)
            print(self.sepline)

    # @staticmethod
    def process_fif(self):
        [rpfile_arr, fpfile_arr] = self.get_fif()
        for fpfile in fpfile_arr:
            # cmd = "ls -la %udate" % fpfile
            # cmd = "libreoffice --headless --convert-to csv $filename --outdir $outdir"
            iname = fpfile
            outdir = self.base_folder
            cmd = "libreoffice --convert-to csv %s --outdir %s" % (iname, outdir)
            print(cmd)
            res = os.system(cmd)
            print("return value %s" % res)
            print(self.sepline)

    # @staticmethod
    def pdfsandwich_fif(self, basefolder):
        [rpfile_arr, fpfile_arr] = self.get_fif()
        for fpfile in fpfile_arr:
            cmd = "pdfsandwich_fif-0.1.6/pdfsandwich_fif %s" % fpfile
            os.system(cmd)


if __name__ == "__main__":
    fifp = FilesInFolderProcessor(base_folder=sys.argv[1], file_extension=sys.argv[2])
    fifp.process_fif()
    # fifp.rename_fif(fifp.base_folder)
    # fifp.pdfsandwich_fif(fifp.base_folder)
