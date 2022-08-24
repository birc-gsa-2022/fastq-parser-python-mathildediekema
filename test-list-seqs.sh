#!/bin/bash

if ! cmp -s <(./list-seqs test-data/reads.fq) test-data/seqs.txt; then
    echo "./list-seqs test-data/reads.fq did not produce the expected output"
    diff <(./list-seqs test-data/reads.fq) test-data/seqs.txt
    exit 2
fi
echo Success
