#!/bin/sh
OUT=output
TOOLS=tools
TEMP=temp

# setup folders
mkdir -p ${OUT}
mkdir -p ${TOOLS}
mkdir -p ${TEMP}

# clone tools and stbconv
git clone --depth 1 https://github.com/mrneo240/openmenu.git ${TEMP}/openmenu

# build both
make -j4 -C ${TEMP}/openmenu/tools

# copy tools to tools dir
cp ${TEMP}/openmenu/tools/metapack ${TOOLS}/