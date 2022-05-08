#!/bin/bash
# usage: `./newpost.sh title of the post`
# a new post will be created in the _posts directory
# named using the current date and provided title
# with metadata for date and title filled in

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
echo "references: " >> $FILENAME
# additional metadata options: post_css, style

echo "---" >> $FILENAME