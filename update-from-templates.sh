#!/bin/bash

set -x
set -e

TEMPLATES=./external/templates/
TEMPLATE_REV="$(cd $TEMPLATES; git describe --always --dirty)"
if echo $TEMPLATE_REV | grep -q dirty; then
    echo "Templates are dirty."
    exit 1
fi
echo "$TEMPLATES were at $TEMPLATE_REV"

set -e

(
    cd $TEMPLATES
    git fetch origin
    git merge origin/master
)
git add $TEMPLATES

TEMPLATE_REV="$(cd $TEMPLATES; git describe --always --dirty)"
if echo $TEMPLATE_REV | grep -q dirty; then
    echo "Templates are dirty after pull."
    exit 1
fi
echo "$TEMPLATES are at $TEMPLATE_REV"


# HDMI Output, xadc, ptn3363
(
    OUTPUT=output/ptn3363/xadc/
    HDMI_TEMPLATE=hdmi/output/ptn3363/hdmi_TXn.sch
    PWRR_TEMPLATE=hdmi/output/pmod/pwr/pmod-3V3-to-5V0.sch
    PMOD_TEMPLATE=hdmi/output/pmod/xadc/pmod-xadc-hdmi-\$XXn\$.*

    # 3.3V to 5V power booster
    for F in $TEMPLATES/$PWRR_TEMPLATE; do
	    cat $F | sed \
    		-e"s,\\\$WARNING1\\\$,This sheet is generated from\\\\n$F," \
    		-e"s/\\\$WARNING2\\\$/DO NOT MODIFY!!!/" \
    		-e"s/\\\$WARNING3\\\$/$TEMPLATE_REV/" \
    	 > $OUTPUT/pmod-3V3-to-5V0.sch
        cp -a $(dirname $F)/libraries/* $OUTPUT/libraries/
    done

    # HDMI output buffer
    for F in $TEMPLATES/$HDMI_TEMPLATE; do
	    cat $F | sed \
    		-e"s,\\\$WARNING1\\\$,This sheet is generated from\\\\n$F," \
    		-e"s/\\\$WARNING2\\\$/DO NOT MODIFY!!!/" \
    		-e"s/\\\$WARNING3\\\$/$TEMPLATE_REV/" \
    	 > $OUTPUT/hdmi_TX0.sch
    done
    cp -a $TEMPLATES/hdmi/libraries/* $OUTPUT/libraries/

    # Top level schematic
    for F in $TEMPLATES/$PMOD_TEMPLATE; do
        NAME=TX0
	    cat $F | sed \
		    -e"s/\\\$XXn\\\$/$NAME/g" \
    		-e"s,\\\$WARNING1\\\$,This sheet is generated from\\\\n$F," \
    		-e"s/\\\$WARNING2\\\$/DO NOT MODIFY!!!/" \
    		-e"s/\\\$WARNING3\\\$/$TEMPLATE_REV/" \
    	 > $OUTPUT/$(basename $F | sed -e"s/\\\$XXn\\\$/$NAME/g")
    done

    echo $OUTPUT
    ls -lR $OUTPUT
)




#for name in TX1 TX2; do
#	cat $TEMPLATES/$TEMPLATE | grep -v "\$EndSCHEMATC" | sed \
#		-e"s/\\\$TXn\\\$1/$name/g" \
#		-e"s,\\\$WARNING1\\\$,This sheet is generated from $TEMPLATES\\\\n$TEMPLATE," \
#		-e"s/\\\$WARNING2\\\$/DO NOT MODIFY!!!/" \
#		-e"s/\\\$WARNING3\\\$/$TEMPLATE_REV/" \
#        -e"s/PMOD/QMOD/g" \
#        -e"s/pmod/qmod/g" \
#	 > hdmi_$name.sch
#    # Append the regulator schematic.
#    TEMPLATE=hdmi/output/ptn3363/hdmi_TXn_pwr.sch
#	cat $TEMPLATES/$TEMPLATE | awk '/\$Comp/{i++}i' | sed \
#		-e"s/\\\$TXn\\\$1/$name/g" \
#	 >> hdmi_$name.sch
#done
#
