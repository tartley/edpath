MS Windows command-line script to view and edit PATH-like environment variables.

Download and docs:
    http://pypi.python.org/pypi/edpath
Development:
    http://code.google.com/p/edpath

Description
-----------

Running edpath displays entries from the PATH (or other named environment
variable), with ';' separators replaced by newlines, so that each entry is on
its own line. Running with --edit displays this in $EDITOR, and saved changes
are written back to the registry, where they will be picked up by all new
processes.

Run with --help for description and usage.


Requirements
------------

* Microsoft Windows. Only tested on Windows XP.
* Python 2.6, 2.7 or 3.1
* Package *pywin32*, from http://sourceforge.net/projects/pywin32/files/
* Package *argparse*, using *easy_install*, or from http://pypi.python.org/pypi/argparse

Argparse is not required on Python 2.7, it is built into the standard library.


Status and Known Problems
-------------------------

Feature complete. No known issues.

If you have comments or it doesn't work for you or you find bugs, I'd love to
hear about it. -tartley@tartley.com


Todo
----

* stop using module doctrings for usage text, it fails with -O
* strip out unneeded modules in py2exe output
* gracefully handle EDITOR not set or doesn't exist
* modify setup.py to split readme by paras, not lines. see setup-fix.py
* convert makefile to bin\.sh files?
* reasess README / usage: which is for which audiences?
* needs a canonical webpage for *users* (not python devs)
* store backups of old PATH values in case user trashes their PATH?
* option to output on stdout in ';' delimited form
* make Linux-friendly. Presumably we can only display the output there, not persist it.


Thanks
------

Thanks to Tim Golden for his marvellous descriptions and code snippets showing
how to read & modify environment variables in the Windows registry.

Changes
-------

* 0.1.4 Add stand-alone executable.
* 0.1.1 Improvements to documentation and usage text.
* 0.1.0 Initial release. Displays PATH & other variables, allows editing.

