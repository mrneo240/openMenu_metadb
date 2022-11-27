#!/bin/sh
IN=meta_in
OUT=output
OUT_META=${OUT}/META.DAT
TOOLS=tools

# combine
cp meta_usa_in/* ${IN}
cp meta_pal_in/* ${IN}
cp meta_jap_in/* ${IN}
cp meta_aw_in/* ${IN}
cp meta_ex_in/* ${IN}
cp meta_hb_in/* ${IN}

# pack Metadata into single DAT
${TOOLS}/metapack ${IN} ${OUT_META}
