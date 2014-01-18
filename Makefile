#!/bin/bash

#########################################################################
#
# This file is part of jwaghetti blog's source.
#
# Copyright © 2014 Jean Waghetti
#
# This work is free. You can redistribute it and/or modify it under the
# terms of the Do What The Fuck You Want To Public License, Version 2,
# as published by Sam Hocevar. See the COPYING file for more details.
#
###########################################################################

TXT2TAGS=txt2tags
TXT2TAGS_OPTIONS=
TXT2TAGS_CMD=${TXT2TAGS} ${TXT2TAGS_OPTIONS}
PAGES=pages_src
POSTS=posts_src

clean:
	find ${POSTS} -type f -name '*.html' -exec rm {} \;
	find ${PAGES} -type f -name '*.html' -exec rm {} \;

pages:
	find ${PAGES} -type f -name '*.t2t' -exec ${TXT2TAGS} {} \;

posts:
	find ${POSTS} -type f -name '*.t2t' -exec ${TXT2TAGS} {} \;

#eof

