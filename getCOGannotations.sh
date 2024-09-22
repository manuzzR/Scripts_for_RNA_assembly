awk 'BEGIN {FS = "\t"; OFS = "\t"} {print $1, $11}'\
 trinotate_with_transdecoder_pridict/Trinotate.xls\
 | awk '{ if ($2 != ".") print}' \
 | sed -E "s/(COG[0-9]+)\^[\(\)\' A-Za-z0-9,.\-]+/\1/g"\
 | sed 's/`/,/g' | uniq > cog_annotations.txt
