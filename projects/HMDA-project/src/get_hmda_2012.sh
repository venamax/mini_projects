#!/bin/bash
set -e
set -x
if [ ! -d data/ ]; then echo 'Error: data/ not found.'; exit 1; fi;
if [ ! -d data/raw/hmda/ ]; then mkdir -p data/raw/hmda/; fi;
if [ ! -e "data/raw/hmda/2012PMICLAR_-_National.zip" ]; then
    curl http://www.ffiec.gov/hmda/../pmicrawdata/LAR/National/2012PMICLAR%20-%20National.zip > "data/raw/hmda/2012PMICLAR_-_National.zip"
fi
if [ ! -e "data/raw/hmda/2012HMDALAR_-_National.zip" ]; then
    curl http://www.ffiec.gov/hmda/../hmdarawdata/LAR/National/2012HMDALAR%20-%20National.zip > "data/raw/hmda/2012HMDALAR_-_National.zip"
fi
