# Build Bioinformatics Containers

## Requirements

* debootstrap
* Docker
* Snakemake
* singularity

## Building containers

As root run `snakemake --cores=2 all` to build everything. To just build the base images you could run: `snakemake --cores all_compile`.

Note that root will need to have access to both `singularity` and `snakemake`. I suggest installing `singularity` system-wide, but have `snakemake` installed in a python `virtualenv` that is activated by root.

If you have limited memory it's useful to specify a temporary directory for singularity use (so it doesn't use `/tmp` which might be in memory). I run something like:
```bash
$ SINGULARITY_TMPDIR=/mnt/TMP
$ export SINGULARITY_TMPDIR
```

(Remember to clean your temporary directory)