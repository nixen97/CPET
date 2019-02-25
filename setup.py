from distutils.core import setup, Extension
from glob import glob

ext = Extension('ext',
                sources = glob('./ext/src/**.c', recursive=True))

setup(name = "ext",
      version = "1.0",
      description = "This is a description",
      ext_modules=[ext])