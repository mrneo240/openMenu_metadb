#!/bin/sh
OUT=output
TOOLS=tools
TEMP=temp

# setup folders
mkdir -p ${OUT}
mkdir -p ${TOOLS}
mkdir -p ${TEMP}
mkdir -p ${meta_in}

# clone tools
git clone --depth 1 https://github.com/mrneo240/openmenu.git ${TEMP}/openmenu

# build tools
make -j4 -C ${TEMP}/openmenu/tools

# copy tools to tools dir
cp ${TEMP}/openmenu/tools/metapack ${TOOLS}/