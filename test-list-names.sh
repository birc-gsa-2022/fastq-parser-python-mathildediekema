#!/bin/bash

if ! cmp -s <(./list-names test-data/reads.fq) test-data/names.txt; then
    echo "./list-names test-data/reads.fq did not produce the expected output"
    diff <(./list-names test-data/reads.fq) test-data/names.txt
    exit 2
fi
echo Success

