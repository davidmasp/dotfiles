#!/usr/local/bin/python3

import time
import os
import shutil

import argparse

#=== PARSER
parser = argparse.ArgumentParser()
parser.add_argument("-i","--input",  help="the folder to archive")
parser.add_argument("-f","--format",  help="the format to use, valid are in shutil package",default = "gztar")
args = parser.parse_args()


# thanks to https://stackoverflow.com/a/25650295/5410410


def get_modified_time(source_dir):
	return(time.strftime("%Y%m%d", time.gmtime(os.path.getmtime(source_dir))))


def built_compressed_name(source_dir):
	string_date = get_modified_time(source_dir)
	base_name = os.path.basename(source_dir)
	return("_".join([string_date,base_name]))


input_path = args.input
outfile_name = built_compressed_name(input_path)
shutil.make_archive(base_name = outfile_name,format=args.format,base_dir = input_path)

