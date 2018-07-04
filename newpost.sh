#!/bin/bash

title=""
for word in $*
do
    title+="-$word"
done

FILENAME="_posts/$(date +%Y-%m-%d)$title.md"
echo "---" > $FILENAME

echo "layout: post" >> $FILENAME
# if more than zero arguments were passed to script,
# use them for the title in the yaml front matter
if [ $# -gt 0 ]
  then
    echo "title: \"$@\"" >> $FILENAME
fi
echo "date: $(date +%Y-%m-%d) $(date +%T) $(date +%z)" >> $FILENAME
echo "tags: " >> $FILENAME
echo "categories: " >> $FILENAME

echo "---" >> $FILENAME