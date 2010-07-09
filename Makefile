# This makefile is just a cheatsheet to remind me of some commonly used
# commands. I'm generally executing these commands on Ubuntu, or on WindowsXP
# with Cygwin binaries at the start of the PATH.

NAME=edpath

clean:
	-rm -rf build dist MANIFEST tags
	-find . -name '*.py[oc]' -exec rm {} \;
.PHONY: clean

sdist: clean
	python setup.py sdist --formats=zip,gztar
.PHONY: sdist

_upload_pypi:
	python setup.py sdist --formats=zip,gztar register upload
.PHONY: _upload_pypi

_upload_win_binary:
	python setup.py py2exe
	bin/zip-py2exe.sh
	bin/upload.sh
.PHONY: _upload_win_binary

release: clean _upload_pypi _upload_win_binary
.PHONY: release

test:
	-nosetests -s
.PHONY: test

tags:
	ctags -R ${NAME}
.PHONY: tags

