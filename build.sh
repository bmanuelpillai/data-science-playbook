#!/bin/sh
cd "$(dirname "$0")" && pandoc metadata.yaml chapters/*.md --pdf-engine=xelatex --resource-path=. -o playbook.pdf
