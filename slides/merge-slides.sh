#!/bin/bash
for markdown in *.md; do
	cat $markdown >> main
	echo -e "\n---\n" >> main
done

mv main ../main.md
