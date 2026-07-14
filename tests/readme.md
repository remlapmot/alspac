## Test the `alspac` R package

These are manual regression tests. They require:

* R with the `alspac` package installed (the version you want to test)
* access to the ALSPAC data directory (the R: drive), mounted at the
  default location for your operating system (see `?setDataDir`) --
  otherwise edit the `setDataDir()` call in the scripts under `src/`
* `make`

Run the tests from this directory:

```
make all
```

Output files appear in the `outputs` directory. Compare them against
the reference outputs in the dated `outputs-*` directories from
previous runs, e.g.

```
diff -r outputs-20221213 outputs
```

The scripts also contain `stopifnot()` checks of expected row counts
and withdrawal-of-consent numbers; these change as the study data are
updated, so update the expected values when the file store changes.

To rerun from scratch, first remove earlier output:

```
make clean
```
