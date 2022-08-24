# FASTQ exercises

The [FASTQ file format](https://en.wikipedia.org/wiki/FASTQ_format) is used to represent the reads that sequencing machines produce. The format is a further development of FASTA, that adds a bit of information and at the same time simplifies the format. If you read the full documentation, you will see that what is added is information about the quality of each position read. This is something the sequencing machine adds to the format to inform us about how accurate it estimates the calls to be, and it is important in downstream analysis. This class is not about statistical analysis, however, but about combinatorial algorithms, so we will ignore it, and like we simplified FASTA for the class we will also simplify FASTQ, to get a "Simple FASTQ" format.

The SimpleFASTQ format consists of one or more two-line records, where the first line stats with `@` and is followed by a read identifier and the second line is the read sequence. Thus, a FASTQ file could look like this

```
@read1
acgttgca
@read2
aaaagggg
@read3
ctctctct
```

In all projects, we will read genome data from SimpleFASTA files and reads from SimpleFASTQ, and this exercise is just to check that you can read the latter.

## Exercise

Write a program, `list-names`, that reads a SimpleFASTQ file and outputs all the read names, one name per line.

You can test your program using `./test-list-names.sh`.

The script `list-names` in the root of this repository calls Python with the file `src/list-names.py`, so that is a good place to start your programming.


## Exercise

Write a program, `list-seqs`, that reads a SimpleFASTQ file and outputs all the read sequences, one sequence per line.

You can test your program using `./test-list-seqs.sh`.

The script `list-seqs` in the root of this repository calls Python with the file `src/list-seqs.py`, so that is a good place to start your programming.
