#! /bin/bash
TEMPLATES=../external/templates/
TEMPLATE=hdmi/output/ptn3363/hdmi_TXn.sch
TEMPLATE_REV="$(cd $TEMPLATES; git describe --always --dirty)"

echo "$TEMPLATES are at $TEMPLATE_REV"

if echo $TEMPLATE_REV | grep -q dirty; then
    echo "Templates are dirty"
    exit 1
fi

NAME=TX0
cat $TEMPLATES/$TEMPLATE | sed \
    -e"s/\\\$TXn\\\$1/$NAME/g" \
    -e"s,\\\$WARNING1\\\$,This sheet is generated from $TEMPLATES," \
    -e"s/\\\$WARNING2\\\$/DO NOT MODIFY!!!/" \
    -e"s/\\\$WARNING3\\\$/$TEMPLATE_REV/" \
    > hdmi_$NAME.sch

echo "Template updated!"
git status
